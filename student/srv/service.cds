using { student.db as db } from '../db/schema';

service StudentService {
    entity Students as projection on db.Student;
}
annotate StudentService.Students with @odata.draft.enabled;
