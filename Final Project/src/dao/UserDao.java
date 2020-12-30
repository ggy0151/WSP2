package dao;
import java.sql.Connection;


public class UserDao {
	private Connection connection;
	
	public UserDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into users(userid, firstname, lastname, dob, email) values(?, ?, ?, ?, ?)");
			preparedStatement.setString(1, user.getUserid());
			preparedStatement.setString(2, user.getFirstName());
			preparedStatement.setString(3, user.getLastName());
			preparedStatement.setDate(4, new java.sql.Date(user.getDob().getTime()));
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.executeUpate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(String userId) {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("delete from ~~");
			preparedStatement.setString(1, userId);
			preparedStatement.executeUpdate();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) {
		
	}
	
	public List<User> getAllUsers(){
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from users");
			while(rs.next()) {
				User user = new User();
				user.setUserid(rs.getString("userid"));
				user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
				user.setDob(rs.getDate("dob"));
				user.setEmail(rs.getString("email"));
				user.add(user);
			}catch(SQLException e) {
				e.printStackTrace();
			}
			
			return users;
		}
		
		public User getUserById(String userId) {
			User user = new User();
			try {
				PreparedStatement preparedStatement = connection.prepareStatement("select * from users where userid=?");
				preparedStatement.setString(1, userId);
				ResultSet rs = preparedStatement.executeQuery();
				
				if(rs.next()) {
					user.setUserid(rs.getString("userid"));
					user.setFirstName(rs.getString("firstname"));
					user.setLastName(rs.getString("lastname"));
					user.setDob(rs.getDate("dob"));
					user.setEmail(rs.getString("email"));
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
			
			return user;
		}
	}
}
