package ${packageName}.usecase;

import javax.inject.Inject;
import javax.inject.Named;

import io.reactivex.Scheduler;

/**
 * Template UseCase
 */
public class ${useCaseClass} extends UseCase {
    @Inject
    public ${useCaseClass}(@Named("executeScheduler") Scheduler threadExecutor,
                           @Named("postScheduler") Scheduler postExecutionThread) {
        super(threadExecutor, postExecutionThread);
    }
}
