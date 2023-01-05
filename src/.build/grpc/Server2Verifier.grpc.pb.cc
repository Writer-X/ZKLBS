// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: Server2Verifier.proto

#include "Server2Verifier.pb.h"
#include "Server2Verifier.grpc.pb.h"

#include <functional>
#include <grpcpp/support/async_stream.h>
#include <grpcpp/support/async_unary_call.h>
#include <grpcpp/impl/codegen/channel_interface.h>
#include <grpcpp/impl/codegen/client_unary_call.h>
#include <grpcpp/impl/codegen/client_callback.h>
#include <grpcpp/impl/codegen/message_allocator.h>
#include <grpcpp/impl/codegen/method_handler.h>
#include <grpcpp/impl/codegen/rpc_service_method.h>
#include <grpcpp/impl/codegen/server_callback.h>
#include <grpcpp/impl/codegen/server_callback_handlers.h>
#include <grpcpp/impl/codegen/server_context.h>
#include <grpcpp/impl/codegen/service_type.h>
#include <grpcpp/impl/codegen/sync_stream.h>
namespace Server2Verifier {

static const char* SVGreeter_method_names[] = {
  "/Server2Verifier.SVGreeter/SVCommunication",
};

std::unique_ptr< SVGreeter::Stub> SVGreeter::NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options) {
  (void)options;
  std::unique_ptr< SVGreeter::Stub> stub(new SVGreeter::Stub(channel, options));
  return stub;
}

SVGreeter::Stub::Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options)
  : channel_(channel), rpcmethod_SVCommunication_(SVGreeter_method_names[0], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  {}

::grpc::Status SVGreeter::Stub::SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::Server2Verifier::SVReply* response) {
  return ::grpc::internal::BlockingUnaryCall< ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_SVCommunication_, context, request, response);
}

void SVGreeter::Stub::async::SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_SVCommunication_, context, request, response, std::move(f));
}

void SVGreeter::Stub::async::SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_SVCommunication_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>* SVGreeter::Stub::PrepareAsyncSVCommunicationRaw(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::Server2Verifier::SVReply, ::Server2Verifier::SVRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_SVCommunication_, context, request);
}

::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>* SVGreeter::Stub::AsyncSVCommunicationRaw(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncSVCommunicationRaw(context, request, cq);
  result->StartCall();
  return result;
}

SVGreeter::Service::Service() {
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      SVGreeter_method_names[0],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< SVGreeter::Service, ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](SVGreeter::Service* service,
             ::grpc::ServerContext* ctx,
             const ::Server2Verifier::SVRequest* req,
             ::Server2Verifier::SVReply* resp) {
               return service->SVCommunication(ctx, req, resp);
             }, this)));
}

SVGreeter::Service::~Service() {
}

::grpc::Status SVGreeter::Service::SVCommunication(::grpc::ServerContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}


}  // namespace Server2Verifier
