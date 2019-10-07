package services;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * 
 * @author absin
 *
 */
public class TestServices {
	public void resetDatabase() {
		String dumpFilePath = System.getProperty("user.dir") + "\\src\\test\\resources\\createSchema.sql";
		try (Connection conn = DriverManager.getConnection("jdbc:postgresql://192.168.0.103:5432/sales_test",
				"postgres", "root")) {

			if (conn != null) {
				System.out.println("Connected to the database!");
				File f = new File(dumpFilePath); // source path is the absolute path of dumpfile.
				ArrayList<String> commands = new ArrayList<String>();
				try {
					BufferedReader bf = new BufferedReader(new FileReader(f));
					String line = null;
					line = bf.readLine();
					String command = "";
					while (line != null) {
						command += line + "\n";
						if (line.endsWith(";")) {
							commands.add(command);
							command = "";
						}
						line = bf.readLine();
					}
				} catch (Exception ex) {
					ex.printStackTrace();
				}

				Statement statement = conn.createStatement();
				for (String s : commands) {
					try {
						System.out.println(s);
						statement.execute(s);
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			} else {
				System.out.println("Failed to make connection!");
			}

		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
