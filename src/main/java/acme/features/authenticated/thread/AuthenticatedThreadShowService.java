
package acme.features.authenticated.thread;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.messages.Message;
import acme.entities.threads.Thread;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.entities.Principal;
import acme.framework.services.AbstractShowService;

@Service
public class AuthenticatedThreadShowService implements AbstractShowService<Authenticated, Thread> {

	// Internal state ---------------------------------------------------------

	@Autowired
	private AuthenticatedThreadRepository repository;


	@Override
	public boolean authorise(final Request<Thread> request) {
		assert request != null;

		boolean result;
		int threadId;
		Thread thread;
		Principal principal;

		threadId = request.getModel().getInteger("id");
		thread = this.repository.findOneThreadById(threadId);
		List<Integer> users = thread.getMessages().stream().map(m -> m.getUser()).map(u -> u.getUserAccount().getId()).collect(Collectors.toList());
		principal = request.getPrincipal();
		result = users.contains(principal.getAccountId());

		return result;
	}

	@Override
	public void unbind(final Request<Thread> request, final Thread entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		Collection<Message> messagesCollection = entity.getMessages();

		request.unbind(entity, model, "title", "creationDate");
		model.setAttribute("messagesCollection", messagesCollection);
	}

	@Override
	public Thread findOne(final Request<Thread> request) {
		assert request != null;

		Thread result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneThreadById(id);
		result.getMessages().size();

		return result;
	}
}
