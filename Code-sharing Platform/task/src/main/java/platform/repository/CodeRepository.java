package platform.repository;

import org.springframework.data.repository.CrudRepository;
import platform.persistence.CodeResponse;

public interface CodeRepository extends CrudRepository<CodeResponse, Long> {
}
