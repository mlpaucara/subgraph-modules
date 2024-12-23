package com.mlpaucara.grpc.server;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.58.0)",
    comments = "Source: risk-service.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class RiskServiceGrpc {

  private RiskServiceGrpc() {}

  public static final java.lang.String SERVICE_NAME = "RiskService";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<com.mlpaucara.grpc.server.EvaluationRequest,
      com.mlpaucara.grpc.server.EvaluationResponse> getGetEvaluationMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "getEvaluation",
      requestType = com.mlpaucara.grpc.server.EvaluationRequest.class,
      responseType = com.mlpaucara.grpc.server.EvaluationResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.mlpaucara.grpc.server.EvaluationRequest,
      com.mlpaucara.grpc.server.EvaluationResponse> getGetEvaluationMethod() {
    io.grpc.MethodDescriptor<com.mlpaucara.grpc.server.EvaluationRequest, com.mlpaucara.grpc.server.EvaluationResponse> getGetEvaluationMethod;
    if ((getGetEvaluationMethod = RiskServiceGrpc.getGetEvaluationMethod) == null) {
      synchronized (RiskServiceGrpc.class) {
        if ((getGetEvaluationMethod = RiskServiceGrpc.getGetEvaluationMethod) == null) {
          RiskServiceGrpc.getGetEvaluationMethod = getGetEvaluationMethod =
              io.grpc.MethodDescriptor.<com.mlpaucara.grpc.server.EvaluationRequest, com.mlpaucara.grpc.server.EvaluationResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "getEvaluation"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.mlpaucara.grpc.server.EvaluationRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.mlpaucara.grpc.server.EvaluationResponse.getDefaultInstance()))
              .setSchemaDescriptor(new RiskServiceMethodDescriptorSupplier("getEvaluation"))
              .build();
        }
      }
    }
    return getGetEvaluationMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static RiskServiceStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<RiskServiceStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<RiskServiceStub>() {
        @java.lang.Override
        public RiskServiceStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new RiskServiceStub(channel, callOptions);
        }
      };
    return RiskServiceStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static RiskServiceBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<RiskServiceBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<RiskServiceBlockingStub>() {
        @java.lang.Override
        public RiskServiceBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new RiskServiceBlockingStub(channel, callOptions);
        }
      };
    return RiskServiceBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static RiskServiceFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<RiskServiceFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<RiskServiceFutureStub>() {
        @java.lang.Override
        public RiskServiceFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new RiskServiceFutureStub(channel, callOptions);
        }
      };
    return RiskServiceFutureStub.newStub(factory, channel);
  }

  /**
   */
  public interface AsyncService {

    /**
     */
    default void getEvaluation(com.mlpaucara.grpc.server.EvaluationRequest request,
        io.grpc.stub.StreamObserver<com.mlpaucara.grpc.server.EvaluationResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetEvaluationMethod(), responseObserver);
    }
  }

  /**
   * Base class for the server implementation of the service RiskService.
   */
  public static abstract class RiskServiceImplBase
      implements io.grpc.BindableService, AsyncService {

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return RiskServiceGrpc.bindService(this);
    }
  }

  /**
   * A stub to allow clients to do asynchronous rpc calls to service RiskService.
   */
  public static final class RiskServiceStub
      extends io.grpc.stub.AbstractAsyncStub<RiskServiceStub> {
    private RiskServiceStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected RiskServiceStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new RiskServiceStub(channel, callOptions);
    }

    /**
     */
    public void getEvaluation(com.mlpaucara.grpc.server.EvaluationRequest request,
        io.grpc.stub.StreamObserver<com.mlpaucara.grpc.server.EvaluationResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetEvaluationMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   * A stub to allow clients to do synchronous rpc calls to service RiskService.
   */
  public static final class RiskServiceBlockingStub
      extends io.grpc.stub.AbstractBlockingStub<RiskServiceBlockingStub> {
    private RiskServiceBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected RiskServiceBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new RiskServiceBlockingStub(channel, callOptions);
    }

    /**
     */
    public com.mlpaucara.grpc.server.EvaluationResponse getEvaluation(com.mlpaucara.grpc.server.EvaluationRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetEvaluationMethod(), getCallOptions(), request);
    }
  }

  /**
   * A stub to allow clients to do ListenableFuture-style rpc calls to service RiskService.
   */
  public static final class RiskServiceFutureStub
      extends io.grpc.stub.AbstractFutureStub<RiskServiceFutureStub> {
    private RiskServiceFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected RiskServiceFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new RiskServiceFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.mlpaucara.grpc.server.EvaluationResponse> getEvaluation(
        com.mlpaucara.grpc.server.EvaluationRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetEvaluationMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_GET_EVALUATION = 0;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final AsyncService serviceImpl;
    private final int methodId;

    MethodHandlers(AsyncService serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_GET_EVALUATION:
          serviceImpl.getEvaluation((com.mlpaucara.grpc.server.EvaluationRequest) request,
              (io.grpc.stub.StreamObserver<com.mlpaucara.grpc.server.EvaluationResponse>) responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  public static final io.grpc.ServerServiceDefinition bindService(AsyncService service) {
    return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
        .addMethod(
          getGetEvaluationMethod(),
          io.grpc.stub.ServerCalls.asyncUnaryCall(
            new MethodHandlers<
              com.mlpaucara.grpc.server.EvaluationRequest,
              com.mlpaucara.grpc.server.EvaluationResponse>(
                service, METHODID_GET_EVALUATION)))
        .build();
  }

  private static abstract class RiskServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    RiskServiceBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return com.mlpaucara.grpc.server.RiskServiceOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("RiskService");
    }
  }

  private static final class RiskServiceFileDescriptorSupplier
      extends RiskServiceBaseDescriptorSupplier {
    RiskServiceFileDescriptorSupplier() {}
  }

  private static final class RiskServiceMethodDescriptorSupplier
      extends RiskServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final java.lang.String methodName;

    RiskServiceMethodDescriptorSupplier(java.lang.String methodName) {
      this.methodName = methodName;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.MethodDescriptor getMethodDescriptor() {
      return getServiceDescriptor().findMethodByName(methodName);
    }
  }

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (RiskServiceGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new RiskServiceFileDescriptorSupplier())
              .addMethod(getGetEvaluationMethod())
              .build();
        }
      }
    }
    return result;
  }
}
