package sec03;

import app.Database;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;
import static com.mongodb.client.model.Filters.eq;
public class FindOneTest {
    public static void main(String[] args) {
        MongoCollection<Document> collection = Database.getCollection("todo");

        String id = "683527356caf1b654751ddcd";

        // ObjectId: Document의 기본 고유 식별자
        /*
        * Bson: Binary JSON
        * */
        // db.users.find({age: {$gt:20} => 조건문에 해당하는 쿼리
        Bson query = eq("_id", new ObjectId(id));

        // 조건에 해당하는 Document 찾기
        // .first() : 찾은 document들 중 첫번째 Document만 반환
        Document doc = collection.find(query).first();

        System.out.println("==> findByIdResult : " + doc);

        Database.close();
    }
}