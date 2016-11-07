package cz.luke.clientServerExample.Common.hessian;

import cz.luke.clientServerExample.Common.model.Message;

public interface Service {
	String proceed(Message p);
}
