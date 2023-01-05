// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: Server2Verifier.proto
// Original file comments:
// Copyright 2015 gRPC authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
#ifndef GRPC_Server2Verifier_2eproto__INCLUDED
#define GRPC_Server2Verifier_2eproto__INCLUDED

#include "Server2Verifier.pb.h"

#include <functional>
#include <grpcpp/generic/async_generic_service.h>
#include <grpcpp/support/async_stream.h>
#include <grpcpp/support/async_unary_call.h>
#include <grpcpp/impl/codegen/client_callback.h>
#include <grpcpp/impl/codegen/client_context.h>
#include <grpcpp/impl/codegen/completion_queue.h>
#include <grpcpp/impl/codegen/message_allocator.h>
#include <grpcpp/impl/codegen/method_handler.h>
#include <grpcpp/impl/codegen/proto_utils.h>
#include <grpcpp/impl/codegen/rpc_method.h>
#include <grpcpp/impl/codegen/server_callback.h>
#include <grpcpp/impl/codegen/server_callback_handlers.h>
#include <grpcpp/impl/codegen/server_context.h>
#include <grpcpp/impl/codegen/service_type.h>
#include <grpcpp/impl/codegen/status.h>
#include <grpcpp/impl/codegen/stub_options.h>
#include <grpcpp/impl/codegen/sync_stream.h>

namespace Server2Verifier {

// The greeting service definition.
class SVGreeter final {
 public:
  static constexpr char const* service_full_name() {
    return "Server2Verifier.SVGreeter";
  }
  class StubInterface {
   public:
    virtual ~StubInterface() {}
    // Sends a greeting
    virtual ::grpc::Status SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::Server2Verifier::SVReply* response) = 0;
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::Server2Verifier::SVReply>> AsyncSVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::Server2Verifier::SVReply>>(AsyncSVCommunicationRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::Server2Verifier::SVReply>> PrepareAsyncSVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::Server2Verifier::SVReply>>(PrepareAsyncSVCommunicationRaw(context, request, cq));
    }
    class async_interface {
     public:
      virtual ~async_interface() {}
      // Sends a greeting
      virtual void SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response, std::function<void(::grpc::Status)>) = 0;
      virtual void SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response, ::grpc::ClientUnaryReactor* reactor) = 0;
    };
    typedef class async_interface experimental_async_interface;
    virtual class async_interface* async() { return nullptr; }
    class async_interface* experimental_async() { return async(); }
   private:
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::Server2Verifier::SVReply>* AsyncSVCommunicationRaw(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) = 0;
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::Server2Verifier::SVReply>* PrepareAsyncSVCommunicationRaw(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) = 0;
  };
  class Stub final : public StubInterface {
   public:
    Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options = ::grpc::StubOptions());
    ::grpc::Status SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::Server2Verifier::SVReply* response) override;
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>> AsyncSVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>>(AsyncSVCommunicationRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>> PrepareAsyncSVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>>(PrepareAsyncSVCommunicationRaw(context, request, cq));
    }
    class async final :
      public StubInterface::async_interface {
     public:
      void SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response, std::function<void(::grpc::Status)>) override;
      void SVCommunication(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response, ::grpc::ClientUnaryReactor* reactor) override;
     private:
      friend class Stub;
      explicit async(Stub* stub): stub_(stub) { }
      Stub* stub() { return stub_; }
      Stub* stub_;
    };
    class async* async() override { return &async_stub_; }

   private:
    std::shared_ptr< ::grpc::ChannelInterface> channel_;
    class async async_stub_{this};
    ::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>* AsyncSVCommunicationRaw(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) override;
    ::grpc::ClientAsyncResponseReader< ::Server2Verifier::SVReply>* PrepareAsyncSVCommunicationRaw(::grpc::ClientContext* context, const ::Server2Verifier::SVRequest& request, ::grpc::CompletionQueue* cq) override;
    const ::grpc::internal::RpcMethod rpcmethod_SVCommunication_;
  };
  static std::unique_ptr<Stub> NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options = ::grpc::StubOptions());

  class Service : public ::grpc::Service {
   public:
    Service();
    virtual ~Service();
    // Sends a greeting
    virtual ::grpc::Status SVCommunication(::grpc::ServerContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response);
  };
  template <class BaseClass>
  class WithAsyncMethod_SVCommunication : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithAsyncMethod_SVCommunication() {
      ::grpc::Service::MarkMethodAsync(0);
    }
    ~WithAsyncMethod_SVCommunication() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SVCommunication(::grpc::ServerContext* /*context*/, const ::Server2Verifier::SVRequest* /*request*/, ::Server2Verifier::SVReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestSVCommunication(::grpc::ServerContext* context, ::Server2Verifier::SVRequest* request, ::grpc::ServerAsyncResponseWriter< ::Server2Verifier::SVReply>* response, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncUnary(0, context, request, response, new_call_cq, notification_cq, tag);
    }
  };
  typedef WithAsyncMethod_SVCommunication<Service > AsyncService;
  template <class BaseClass>
  class WithCallbackMethod_SVCommunication : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithCallbackMethod_SVCommunication() {
      ::grpc::Service::MarkMethodCallback(0,
          new ::grpc::internal::CallbackUnaryHandler< ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply>(
            [this](
                   ::grpc::CallbackServerContext* context, const ::Server2Verifier::SVRequest* request, ::Server2Verifier::SVReply* response) { return this->SVCommunication(context, request, response); }));}
    void SetMessageAllocatorFor_SVCommunication(
        ::grpc::MessageAllocator< ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply>* allocator) {
      ::grpc::internal::MethodHandler* const handler = ::grpc::Service::GetHandler(0);
      static_cast<::grpc::internal::CallbackUnaryHandler< ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply>*>(handler)
              ->SetMessageAllocator(allocator);
    }
    ~WithCallbackMethod_SVCommunication() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SVCommunication(::grpc::ServerContext* /*context*/, const ::Server2Verifier::SVRequest* /*request*/, ::Server2Verifier::SVReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    virtual ::grpc::ServerUnaryReactor* SVCommunication(
      ::grpc::CallbackServerContext* /*context*/, const ::Server2Verifier::SVRequest* /*request*/, ::Server2Verifier::SVReply* /*response*/)  { return nullptr; }
  };
  typedef WithCallbackMethod_SVCommunication<Service > CallbackService;
  typedef CallbackService ExperimentalCallbackService;
  template <class BaseClass>
  class WithGenericMethod_SVCommunication : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithGenericMethod_SVCommunication() {
      ::grpc::Service::MarkMethodGeneric(0);
    }
    ~WithGenericMethod_SVCommunication() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SVCommunication(::grpc::ServerContext* /*context*/, const ::Server2Verifier::SVRequest* /*request*/, ::Server2Verifier::SVReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
  };
  template <class BaseClass>
  class WithRawMethod_SVCommunication : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithRawMethod_SVCommunication() {
      ::grpc::Service::MarkMethodRaw(0);
    }
    ~WithRawMethod_SVCommunication() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SVCommunication(::grpc::ServerContext* /*context*/, const ::Server2Verifier::SVRequest* /*request*/, ::Server2Verifier::SVReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestSVCommunication(::grpc::ServerContext* context, ::grpc::ByteBuffer* request, ::grpc::ServerAsyncResponseWriter< ::grpc::ByteBuffer>* response, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncUnary(0, context, request, response, new_call_cq, notification_cq, tag);
    }
  };
  template <class BaseClass>
  class WithRawCallbackMethod_SVCommunication : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithRawCallbackMethod_SVCommunication() {
      ::grpc::Service::MarkMethodRawCallback(0,
          new ::grpc::internal::CallbackUnaryHandler< ::grpc::ByteBuffer, ::grpc::ByteBuffer>(
            [this](
                   ::grpc::CallbackServerContext* context, const ::grpc::ByteBuffer* request, ::grpc::ByteBuffer* response) { return this->SVCommunication(context, request, response); }));
    }
    ~WithRawCallbackMethod_SVCommunication() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SVCommunication(::grpc::ServerContext* /*context*/, const ::Server2Verifier::SVRequest* /*request*/, ::Server2Verifier::SVReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    virtual ::grpc::ServerUnaryReactor* SVCommunication(
      ::grpc::CallbackServerContext* /*context*/, const ::grpc::ByteBuffer* /*request*/, ::grpc::ByteBuffer* /*response*/)  { return nullptr; }
  };
  template <class BaseClass>
  class WithStreamedUnaryMethod_SVCommunication : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithStreamedUnaryMethod_SVCommunication() {
      ::grpc::Service::MarkMethodStreamed(0,
        new ::grpc::internal::StreamedUnaryHandler<
          ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply>(
            [this](::grpc::ServerContext* context,
                   ::grpc::ServerUnaryStreamer<
                     ::Server2Verifier::SVRequest, ::Server2Verifier::SVReply>* streamer) {
                       return this->StreamedSVCommunication(context,
                         streamer);
                  }));
    }
    ~WithStreamedUnaryMethod_SVCommunication() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable regular version of this method
    ::grpc::Status SVCommunication(::grpc::ServerContext* /*context*/, const ::Server2Verifier::SVRequest* /*request*/, ::Server2Verifier::SVReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    // replace default version of method with streamed unary
    virtual ::grpc::Status StreamedSVCommunication(::grpc::ServerContext* context, ::grpc::ServerUnaryStreamer< ::Server2Verifier::SVRequest,::Server2Verifier::SVReply>* server_unary_streamer) = 0;
  };
  typedef WithStreamedUnaryMethod_SVCommunication<Service > StreamedUnaryService;
  typedef Service SplitStreamedService;
  typedef WithStreamedUnaryMethod_SVCommunication<Service > StreamedService;
};

}  // namespace Server2Verifier


#endif  // GRPC_Server2Verifier_2eproto__INCLUDED