#include <glad/vulkan.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef GLAD_IMPL_UTIL_C_
#define GLAD_IMPL_UTIL_C_

#ifdef _MSC_VER
#define GLAD_IMPL_UTIL_SSCANF sscanf_s
#else
#define GLAD_IMPL_UTIL_SSCANF sscanf
#endif

#endif /* GLAD_IMPL_UTIL_C_ */
#ifdef __cplusplus
GladVulkanContext glad_vulkan_context = {};
#else
GladVulkanContext glad_vulkan_context = {0};
#endif

static void glad_vk_load_VK_VERSION_1_0(GladVulkanContext *context,
                                        GLADuserptrloadfunc load,
                                        void *userptr) {
  if (!context->VERSION_1_0) return;
  context->AllocateCommandBuffers =
      (PFN_vkAllocateCommandBuffers)load(userptr, "vkAllocateCommandBuffers");
  context->AllocateDescriptorSets =
      (PFN_vkAllocateDescriptorSets)load(userptr, "vkAllocateDescriptorSets");
  context->AllocateMemory =
      (PFN_vkAllocateMemory)load(userptr, "vkAllocateMemory");
  context->BeginCommandBuffer =
      (PFN_vkBeginCommandBuffer)load(userptr, "vkBeginCommandBuffer");
  context->BindBufferMemory =
      (PFN_vkBindBufferMemory)load(userptr, "vkBindBufferMemory");
  context->BindImageMemory =
      (PFN_vkBindImageMemory)load(userptr, "vkBindImageMemory");
  context->CmdBeginQuery =
      (PFN_vkCmdBeginQuery)load(userptr, "vkCmdBeginQuery");
  context->CmdBeginRenderPass =
      (PFN_vkCmdBeginRenderPass)load(userptr, "vkCmdBeginRenderPass");
  context->CmdBindDescriptorSets =
      (PFN_vkCmdBindDescriptorSets)load(userptr, "vkCmdBindDescriptorSets");
  context->CmdBindIndexBuffer =
      (PFN_vkCmdBindIndexBuffer)load(userptr, "vkCmdBindIndexBuffer");
  context->CmdBindPipeline =
      (PFN_vkCmdBindPipeline)load(userptr, "vkCmdBindPipeline");
  context->CmdBindVertexBuffers =
      (PFN_vkCmdBindVertexBuffers)load(userptr, "vkCmdBindVertexBuffers");
  context->CmdBlitImage = (PFN_vkCmdBlitImage)load(userptr, "vkCmdBlitImage");
  context->CmdClearAttachments =
      (PFN_vkCmdClearAttachments)load(userptr, "vkCmdClearAttachments");
  context->CmdClearColorImage =
      (PFN_vkCmdClearColorImage)load(userptr, "vkCmdClearColorImage");
  context->CmdClearDepthStencilImage = (PFN_vkCmdClearDepthStencilImage)load(
      userptr, "vkCmdClearDepthStencilImage");
  context->CmdCopyBuffer =
      (PFN_vkCmdCopyBuffer)load(userptr, "vkCmdCopyBuffer");
  context->CmdCopyBufferToImage =
      (PFN_vkCmdCopyBufferToImage)load(userptr, "vkCmdCopyBufferToImage");
  context->CmdCopyImage = (PFN_vkCmdCopyImage)load(userptr, "vkCmdCopyImage");
  context->CmdCopyImageToBuffer =
      (PFN_vkCmdCopyImageToBuffer)load(userptr, "vkCmdCopyImageToBuffer");
  context->CmdCopyQueryPoolResults =
      (PFN_vkCmdCopyQueryPoolResults)load(userptr, "vkCmdCopyQueryPoolResults");
  context->CmdDispatch = (PFN_vkCmdDispatch)load(userptr, "vkCmdDispatch");
  context->CmdDispatchIndirect =
      (PFN_vkCmdDispatchIndirect)load(userptr, "vkCmdDispatchIndirect");
  context->CmdDraw = (PFN_vkCmdDraw)load(userptr, "vkCmdDraw");
  context->CmdDrawIndexed =
      (PFN_vkCmdDrawIndexed)load(userptr, "vkCmdDrawIndexed");
  context->CmdDrawIndexedIndirect =
      (PFN_vkCmdDrawIndexedIndirect)load(userptr, "vkCmdDrawIndexedIndirect");
  context->CmdDrawIndirect =
      (PFN_vkCmdDrawIndirect)load(userptr, "vkCmdDrawIndirect");
  context->CmdEndQuery = (PFN_vkCmdEndQuery)load(userptr, "vkCmdEndQuery");
  context->CmdEndRenderPass =
      (PFN_vkCmdEndRenderPass)load(userptr, "vkCmdEndRenderPass");
  context->CmdExecuteCommands =
      (PFN_vkCmdExecuteCommands)load(userptr, "vkCmdExecuteCommands");
  context->CmdFillBuffer =
      (PFN_vkCmdFillBuffer)load(userptr, "vkCmdFillBuffer");
  context->CmdNextSubpass =
      (PFN_vkCmdNextSubpass)load(userptr, "vkCmdNextSubpass");
  context->CmdPipelineBarrier =
      (PFN_vkCmdPipelineBarrier)load(userptr, "vkCmdPipelineBarrier");
  context->CmdPushConstants =
      (PFN_vkCmdPushConstants)load(userptr, "vkCmdPushConstants");
  context->CmdResetEvent =
      (PFN_vkCmdResetEvent)load(userptr, "vkCmdResetEvent");
  context->CmdResetQueryPool =
      (PFN_vkCmdResetQueryPool)load(userptr, "vkCmdResetQueryPool");
  context->CmdResolveImage =
      (PFN_vkCmdResolveImage)load(userptr, "vkCmdResolveImage");
  context->CmdSetBlendConstants =
      (PFN_vkCmdSetBlendConstants)load(userptr, "vkCmdSetBlendConstants");
  context->CmdSetDepthBias =
      (PFN_vkCmdSetDepthBias)load(userptr, "vkCmdSetDepthBias");
  context->CmdSetDepthBounds =
      (PFN_vkCmdSetDepthBounds)load(userptr, "vkCmdSetDepthBounds");
  context->CmdSetEvent = (PFN_vkCmdSetEvent)load(userptr, "vkCmdSetEvent");
  context->CmdSetLineWidth =
      (PFN_vkCmdSetLineWidth)load(userptr, "vkCmdSetLineWidth");
  context->CmdSetScissor =
      (PFN_vkCmdSetScissor)load(userptr, "vkCmdSetScissor");
  context->CmdSetStencilCompareMask = (PFN_vkCmdSetStencilCompareMask)load(
      userptr, "vkCmdSetStencilCompareMask");
  context->CmdSetStencilReference =
      (PFN_vkCmdSetStencilReference)load(userptr, "vkCmdSetStencilReference");
  context->CmdSetStencilWriteMask =
      (PFN_vkCmdSetStencilWriteMask)load(userptr, "vkCmdSetStencilWriteMask");
  context->CmdSetViewport =
      (PFN_vkCmdSetViewport)load(userptr, "vkCmdSetViewport");
  context->CmdUpdateBuffer =
      (PFN_vkCmdUpdateBuffer)load(userptr, "vkCmdUpdateBuffer");
  context->CmdWaitEvents =
      (PFN_vkCmdWaitEvents)load(userptr, "vkCmdWaitEvents");
  context->CmdWriteTimestamp =
      (PFN_vkCmdWriteTimestamp)load(userptr, "vkCmdWriteTimestamp");
  context->CreateBuffer = (PFN_vkCreateBuffer)load(userptr, "vkCreateBuffer");
  context->CreateBufferView =
      (PFN_vkCreateBufferView)load(userptr, "vkCreateBufferView");
  context->CreateCommandPool =
      (PFN_vkCreateCommandPool)load(userptr, "vkCreateCommandPool");
  context->CreateComputePipelines =
      (PFN_vkCreateComputePipelines)load(userptr, "vkCreateComputePipelines");
  context->CreateDescriptorPool =
      (PFN_vkCreateDescriptorPool)load(userptr, "vkCreateDescriptorPool");
  context->CreateDescriptorSetLayout = (PFN_vkCreateDescriptorSetLayout)load(
      userptr, "vkCreateDescriptorSetLayout");
  context->CreateDevice = (PFN_vkCreateDevice)load(userptr, "vkCreateDevice");
  context->CreateEvent = (PFN_vkCreateEvent)load(userptr, "vkCreateEvent");
  context->CreateFence = (PFN_vkCreateFence)load(userptr, "vkCreateFence");
  context->CreateFramebuffer =
      (PFN_vkCreateFramebuffer)load(userptr, "vkCreateFramebuffer");
  context->CreateGraphicsPipelines =
      (PFN_vkCreateGraphicsPipelines)load(userptr, "vkCreateGraphicsPipelines");
  context->CreateImage = (PFN_vkCreateImage)load(userptr, "vkCreateImage");
  context->CreateImageView =
      (PFN_vkCreateImageView)load(userptr, "vkCreateImageView");
  context->CreateInstance =
      (PFN_vkCreateInstance)load(userptr, "vkCreateInstance");
  context->CreatePipelineCache =
      (PFN_vkCreatePipelineCache)load(userptr, "vkCreatePipelineCache");
  context->CreatePipelineLayout =
      (PFN_vkCreatePipelineLayout)load(userptr, "vkCreatePipelineLayout");
  context->CreateQueryPool =
      (PFN_vkCreateQueryPool)load(userptr, "vkCreateQueryPool");
  context->CreateRenderPass =
      (PFN_vkCreateRenderPass)load(userptr, "vkCreateRenderPass");
  context->CreateSampler =
      (PFN_vkCreateSampler)load(userptr, "vkCreateSampler");
  context->CreateSemaphore =
      (PFN_vkCreateSemaphore)load(userptr, "vkCreateSemaphore");
  context->CreateShaderModule =
      (PFN_vkCreateShaderModule)load(userptr, "vkCreateShaderModule");
  context->DestroyBuffer =
      (PFN_vkDestroyBuffer)load(userptr, "vkDestroyBuffer");
  context->DestroyBufferView =
      (PFN_vkDestroyBufferView)load(userptr, "vkDestroyBufferView");
  context->DestroyCommandPool =
      (PFN_vkDestroyCommandPool)load(userptr, "vkDestroyCommandPool");
  context->DestroyDescriptorPool =
      (PFN_vkDestroyDescriptorPool)load(userptr, "vkDestroyDescriptorPool");
  context->DestroyDescriptorSetLayout = (PFN_vkDestroyDescriptorSetLayout)load(
      userptr, "vkDestroyDescriptorSetLayout");
  context->DestroyDevice =
      (PFN_vkDestroyDevice)load(userptr, "vkDestroyDevice");
  context->DestroyEvent = (PFN_vkDestroyEvent)load(userptr, "vkDestroyEvent");
  context->DestroyFence = (PFN_vkDestroyFence)load(userptr, "vkDestroyFence");
  context->DestroyFramebuffer =
      (PFN_vkDestroyFramebuffer)load(userptr, "vkDestroyFramebuffer");
  context->DestroyImage = (PFN_vkDestroyImage)load(userptr, "vkDestroyImage");
  context->DestroyImageView =
      (PFN_vkDestroyImageView)load(userptr, "vkDestroyImageView");
  context->DestroyInstance =
      (PFN_vkDestroyInstance)load(userptr, "vkDestroyInstance");
  context->DestroyPipeline =
      (PFN_vkDestroyPipeline)load(userptr, "vkDestroyPipeline");
  context->DestroyPipelineCache =
      (PFN_vkDestroyPipelineCache)load(userptr, "vkDestroyPipelineCache");
  context->DestroyPipelineLayout =
      (PFN_vkDestroyPipelineLayout)load(userptr, "vkDestroyPipelineLayout");
  context->DestroyQueryPool =
      (PFN_vkDestroyQueryPool)load(userptr, "vkDestroyQueryPool");
  context->DestroyRenderPass =
      (PFN_vkDestroyRenderPass)load(userptr, "vkDestroyRenderPass");
  context->DestroySampler =
      (PFN_vkDestroySampler)load(userptr, "vkDestroySampler");
  context->DestroySemaphore =
      (PFN_vkDestroySemaphore)load(userptr, "vkDestroySemaphore");
  context->DestroyShaderModule =
      (PFN_vkDestroyShaderModule)load(userptr, "vkDestroyShaderModule");
  context->DeviceWaitIdle =
      (PFN_vkDeviceWaitIdle)load(userptr, "vkDeviceWaitIdle");
  context->EndCommandBuffer =
      (PFN_vkEndCommandBuffer)load(userptr, "vkEndCommandBuffer");
  context->EnumerateDeviceExtensionProperties =
      (PFN_vkEnumerateDeviceExtensionProperties)load(
          userptr, "vkEnumerateDeviceExtensionProperties");
  context->EnumerateDeviceLayerProperties =
      (PFN_vkEnumerateDeviceLayerProperties)load(
          userptr, "vkEnumerateDeviceLayerProperties");
  context->EnumerateInstanceExtensionProperties =
      (PFN_vkEnumerateInstanceExtensionProperties)load(
          userptr, "vkEnumerateInstanceExtensionProperties");
  context->EnumerateInstanceLayerProperties =
      (PFN_vkEnumerateInstanceLayerProperties)load(
          userptr, "vkEnumerateInstanceLayerProperties");
  context->EnumeratePhysicalDevices = (PFN_vkEnumeratePhysicalDevices)load(
      userptr, "vkEnumeratePhysicalDevices");
  context->FlushMappedMemoryRanges =
      (PFN_vkFlushMappedMemoryRanges)load(userptr, "vkFlushMappedMemoryRanges");
  context->FreeCommandBuffers =
      (PFN_vkFreeCommandBuffers)load(userptr, "vkFreeCommandBuffers");
  context->FreeDescriptorSets =
      (PFN_vkFreeDescriptorSets)load(userptr, "vkFreeDescriptorSets");
  context->FreeMemory = (PFN_vkFreeMemory)load(userptr, "vkFreeMemory");
  context->GetBufferMemoryRequirements =
      (PFN_vkGetBufferMemoryRequirements)load(userptr,
                                              "vkGetBufferMemoryRequirements");
  context->GetDeviceMemoryCommitment = (PFN_vkGetDeviceMemoryCommitment)load(
      userptr, "vkGetDeviceMemoryCommitment");
  context->GetDeviceProcAddr =
      (PFN_vkGetDeviceProcAddr)load(userptr, "vkGetDeviceProcAddr");
  context->GetDeviceQueue =
      (PFN_vkGetDeviceQueue)load(userptr, "vkGetDeviceQueue");
  context->GetEventStatus =
      (PFN_vkGetEventStatus)load(userptr, "vkGetEventStatus");
  context->GetFenceStatus =
      (PFN_vkGetFenceStatus)load(userptr, "vkGetFenceStatus");
  context->GetImageMemoryRequirements = (PFN_vkGetImageMemoryRequirements)load(
      userptr, "vkGetImageMemoryRequirements");
  context->GetImageSparseMemoryRequirements =
      (PFN_vkGetImageSparseMemoryRequirements)load(
          userptr, "vkGetImageSparseMemoryRequirements");
  context->GetImageSubresourceLayout = (PFN_vkGetImageSubresourceLayout)load(
      userptr, "vkGetImageSubresourceLayout");
  context->GetInstanceProcAddr =
      (PFN_vkGetInstanceProcAddr)load(userptr, "vkGetInstanceProcAddr");
  context->GetPhysicalDeviceFeatures = (PFN_vkGetPhysicalDeviceFeatures)load(
      userptr, "vkGetPhysicalDeviceFeatures");
  context->GetPhysicalDeviceFormatProperties =
      (PFN_vkGetPhysicalDeviceFormatProperties)load(
          userptr, "vkGetPhysicalDeviceFormatProperties");
  context->GetPhysicalDeviceImageFormatProperties =
      (PFN_vkGetPhysicalDeviceImageFormatProperties)load(
          userptr, "vkGetPhysicalDeviceImageFormatProperties");
  context->GetPhysicalDeviceMemoryProperties =
      (PFN_vkGetPhysicalDeviceMemoryProperties)load(
          userptr, "vkGetPhysicalDeviceMemoryProperties");
  context->GetPhysicalDeviceProperties =
      (PFN_vkGetPhysicalDeviceProperties)load(userptr,
                                              "vkGetPhysicalDeviceProperties");
  context->GetPhysicalDeviceQueueFamilyProperties =
      (PFN_vkGetPhysicalDeviceQueueFamilyProperties)load(
          userptr, "vkGetPhysicalDeviceQueueFamilyProperties");
  context->GetPhysicalDeviceSparseImageFormatProperties =
      (PFN_vkGetPhysicalDeviceSparseImageFormatProperties)load(
          userptr, "vkGetPhysicalDeviceSparseImageFormatProperties");
  context->GetPipelineCacheData =
      (PFN_vkGetPipelineCacheData)load(userptr, "vkGetPipelineCacheData");
  context->GetQueryPoolResults =
      (PFN_vkGetQueryPoolResults)load(userptr, "vkGetQueryPoolResults");
  context->GetRenderAreaGranularity = (PFN_vkGetRenderAreaGranularity)load(
      userptr, "vkGetRenderAreaGranularity");
  context->InvalidateMappedMemoryRanges =
      (PFN_vkInvalidateMappedMemoryRanges)load(
          userptr, "vkInvalidateMappedMemoryRanges");
  context->MapMemory = (PFN_vkMapMemory)load(userptr, "vkMapMemory");
  context->MergePipelineCaches =
      (PFN_vkMergePipelineCaches)load(userptr, "vkMergePipelineCaches");
  context->QueueBindSparse =
      (PFN_vkQueueBindSparse)load(userptr, "vkQueueBindSparse");
  context->QueueSubmit = (PFN_vkQueueSubmit)load(userptr, "vkQueueSubmit");
  context->QueueWaitIdle =
      (PFN_vkQueueWaitIdle)load(userptr, "vkQueueWaitIdle");
  context->ResetCommandBuffer =
      (PFN_vkResetCommandBuffer)load(userptr, "vkResetCommandBuffer");
  context->ResetCommandPool =
      (PFN_vkResetCommandPool)load(userptr, "vkResetCommandPool");
  context->ResetDescriptorPool =
      (PFN_vkResetDescriptorPool)load(userptr, "vkResetDescriptorPool");
  context->ResetEvent = (PFN_vkResetEvent)load(userptr, "vkResetEvent");
  context->ResetFences = (PFN_vkResetFences)load(userptr, "vkResetFences");
  context->SetEvent = (PFN_vkSetEvent)load(userptr, "vkSetEvent");
  context->UnmapMemory = (PFN_vkUnmapMemory)load(userptr, "vkUnmapMemory");
  context->UpdateDescriptorSets =
      (PFN_vkUpdateDescriptorSets)load(userptr, "vkUpdateDescriptorSets");
  context->WaitForFences =
      (PFN_vkWaitForFences)load(userptr, "vkWaitForFences");
}
static void glad_vk_load_VK_VERSION_1_1(GladVulkanContext *context,
                                        GLADuserptrloadfunc load,
                                        void *userptr) {
  if (!context->VERSION_1_1) return;
  context->BindBufferMemory2 =
      (PFN_vkBindBufferMemory2)load(userptr, "vkBindBufferMemory2");
  context->BindImageMemory2 =
      (PFN_vkBindImageMemory2)load(userptr, "vkBindImageMemory2");
  context->CmdDispatchBase =
      (PFN_vkCmdDispatchBase)load(userptr, "vkCmdDispatchBase");
  context->CmdSetDeviceMask =
      (PFN_vkCmdSetDeviceMask)load(userptr, "vkCmdSetDeviceMask");
  context->CreateDescriptorUpdateTemplate =
      (PFN_vkCreateDescriptorUpdateTemplate)load(
          userptr, "vkCreateDescriptorUpdateTemplate");
  context->CreateSamplerYcbcrConversion =
      (PFN_vkCreateSamplerYcbcrConversion)load(
          userptr, "vkCreateSamplerYcbcrConversion");
  context->DestroyDescriptorUpdateTemplate =
      (PFN_vkDestroyDescriptorUpdateTemplate)load(
          userptr, "vkDestroyDescriptorUpdateTemplate");
  context->DestroySamplerYcbcrConversion =
      (PFN_vkDestroySamplerYcbcrConversion)load(
          userptr, "vkDestroySamplerYcbcrConversion");
  context->EnumerateInstanceVersion = (PFN_vkEnumerateInstanceVersion)load(
      userptr, "vkEnumerateInstanceVersion");
  context->EnumeratePhysicalDeviceGroups =
      (PFN_vkEnumeratePhysicalDeviceGroups)load(
          userptr, "vkEnumeratePhysicalDeviceGroups");
  context->GetBufferMemoryRequirements2 =
      (PFN_vkGetBufferMemoryRequirements2)load(
          userptr, "vkGetBufferMemoryRequirements2");
  context->GetDescriptorSetLayoutSupport =
      (PFN_vkGetDescriptorSetLayoutSupport)load(
          userptr, "vkGetDescriptorSetLayoutSupport");
  context->GetDeviceGroupPeerMemoryFeatures =
      (PFN_vkGetDeviceGroupPeerMemoryFeatures)load(
          userptr, "vkGetDeviceGroupPeerMemoryFeatures");
  context->GetDeviceQueue2 =
      (PFN_vkGetDeviceQueue2)load(userptr, "vkGetDeviceQueue2");
  context->GetImageMemoryRequirements2 =
      (PFN_vkGetImageMemoryRequirements2)load(userptr,
                                              "vkGetImageMemoryRequirements2");
  context->GetImageSparseMemoryRequirements2 =
      (PFN_vkGetImageSparseMemoryRequirements2)load(
          userptr, "vkGetImageSparseMemoryRequirements2");
  context->GetPhysicalDeviceExternalBufferProperties =
      (PFN_vkGetPhysicalDeviceExternalBufferProperties)load(
          userptr, "vkGetPhysicalDeviceExternalBufferProperties");
  context->GetPhysicalDeviceExternalFenceProperties =
      (PFN_vkGetPhysicalDeviceExternalFenceProperties)load(
          userptr, "vkGetPhysicalDeviceExternalFenceProperties");
  context->GetPhysicalDeviceExternalSemaphoreProperties =
      (PFN_vkGetPhysicalDeviceExternalSemaphoreProperties)load(
          userptr, "vkGetPhysicalDeviceExternalSemaphoreProperties");
  context->GetPhysicalDeviceFeatures2 = (PFN_vkGetPhysicalDeviceFeatures2)load(
      userptr, "vkGetPhysicalDeviceFeatures2");
  context->GetPhysicalDeviceFormatProperties2 =
      (PFN_vkGetPhysicalDeviceFormatProperties2)load(
          userptr, "vkGetPhysicalDeviceFormatProperties2");
  context->GetPhysicalDeviceImageFormatProperties2 =
      (PFN_vkGetPhysicalDeviceImageFormatProperties2)load(
          userptr, "vkGetPhysicalDeviceImageFormatProperties2");
  context->GetPhysicalDeviceMemoryProperties2 =
      (PFN_vkGetPhysicalDeviceMemoryProperties2)load(
          userptr, "vkGetPhysicalDeviceMemoryProperties2");
  context->GetPhysicalDeviceProperties2 =
      (PFN_vkGetPhysicalDeviceProperties2)load(
          userptr, "vkGetPhysicalDeviceProperties2");
  context->GetPhysicalDeviceQueueFamilyProperties2 =
      (PFN_vkGetPhysicalDeviceQueueFamilyProperties2)load(
          userptr, "vkGetPhysicalDeviceQueueFamilyProperties2");
  context->GetPhysicalDeviceSparseImageFormatProperties2 =
      (PFN_vkGetPhysicalDeviceSparseImageFormatProperties2)load(
          userptr, "vkGetPhysicalDeviceSparseImageFormatProperties2");
  context->TrimCommandPool =
      (PFN_vkTrimCommandPool)load(userptr, "vkTrimCommandPool");
  context->UpdateDescriptorSetWithTemplate =
      (PFN_vkUpdateDescriptorSetWithTemplate)load(
          userptr, "vkUpdateDescriptorSetWithTemplate");
}
static void glad_vk_load_VK_VERSION_1_2(GladVulkanContext *context,
                                        GLADuserptrloadfunc load,
                                        void *userptr) {
  if (!context->VERSION_1_2) return;
  context->CmdBeginRenderPass2 =
      (PFN_vkCmdBeginRenderPass2)load(userptr, "vkCmdBeginRenderPass2");
  context->CmdDrawIndexedIndirectCount =
      (PFN_vkCmdDrawIndexedIndirectCount)load(userptr,
                                              "vkCmdDrawIndexedIndirectCount");
  context->CmdDrawIndirectCount =
      (PFN_vkCmdDrawIndirectCount)load(userptr, "vkCmdDrawIndirectCount");
  context->CmdEndRenderPass2 =
      (PFN_vkCmdEndRenderPass2)load(userptr, "vkCmdEndRenderPass2");
  context->CmdNextSubpass2 =
      (PFN_vkCmdNextSubpass2)load(userptr, "vkCmdNextSubpass2");
  context->CreateRenderPass2 =
      (PFN_vkCreateRenderPass2)load(userptr, "vkCreateRenderPass2");
  context->GetBufferDeviceAddress =
      (PFN_vkGetBufferDeviceAddress)load(userptr, "vkGetBufferDeviceAddress");
  context->GetBufferOpaqueCaptureAddress =
      (PFN_vkGetBufferOpaqueCaptureAddress)load(
          userptr, "vkGetBufferOpaqueCaptureAddress");
  context->GetDeviceMemoryOpaqueCaptureAddress =
      (PFN_vkGetDeviceMemoryOpaqueCaptureAddress)load(
          userptr, "vkGetDeviceMemoryOpaqueCaptureAddress");
  context->GetSemaphoreCounterValue = (PFN_vkGetSemaphoreCounterValue)load(
      userptr, "vkGetSemaphoreCounterValue");
  context->ResetQueryPool =
      (PFN_vkResetQueryPool)load(userptr, "vkResetQueryPool");
  context->SignalSemaphore =
      (PFN_vkSignalSemaphore)load(userptr, "vkSignalSemaphore");
  context->WaitSemaphores =
      (PFN_vkWaitSemaphores)load(userptr, "vkWaitSemaphores");
}
static void glad_vk_load_VK_KHR_surface(GladVulkanContext *context,
                                        GLADuserptrloadfunc load,
                                        void *userptr) {
  if (!context->KHR_surface) return;
  context->DestroySurfaceKHR =
      (PFN_vkDestroySurfaceKHR)load(userptr, "vkDestroySurfaceKHR");
  context->GetPhysicalDeviceSurfaceCapabilitiesKHR =
      (PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR)load(
          userptr, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
  context->GetPhysicalDeviceSurfaceFormatsKHR =
      (PFN_vkGetPhysicalDeviceSurfaceFormatsKHR)load(
          userptr, "vkGetPhysicalDeviceSurfaceFormatsKHR");
  context->GetPhysicalDeviceSurfacePresentModesKHR =
      (PFN_vkGetPhysicalDeviceSurfacePresentModesKHR)load(
          userptr, "vkGetPhysicalDeviceSurfacePresentModesKHR");
  context->GetPhysicalDeviceSurfaceSupportKHR =
      (PFN_vkGetPhysicalDeviceSurfaceSupportKHR)load(
          userptr, "vkGetPhysicalDeviceSurfaceSupportKHR");
}
static void glad_vk_load_VK_KHR_swapchain(GladVulkanContext *context,
                                          GLADuserptrloadfunc load,
                                          void *userptr) {
  if (!context->KHR_swapchain) return;
  context->AcquireNextImage2KHR =
      (PFN_vkAcquireNextImage2KHR)load(userptr, "vkAcquireNextImage2KHR");
  context->AcquireNextImageKHR =
      (PFN_vkAcquireNextImageKHR)load(userptr, "vkAcquireNextImageKHR");
  context->CreateSwapchainKHR =
      (PFN_vkCreateSwapchainKHR)load(userptr, "vkCreateSwapchainKHR");
  context->DestroySwapchainKHR =
      (PFN_vkDestroySwapchainKHR)load(userptr, "vkDestroySwapchainKHR");
  context->GetDeviceGroupPresentCapabilitiesKHR =
      (PFN_vkGetDeviceGroupPresentCapabilitiesKHR)load(
          userptr, "vkGetDeviceGroupPresentCapabilitiesKHR");
  context->GetDeviceGroupSurfacePresentModesKHR =
      (PFN_vkGetDeviceGroupSurfacePresentModesKHR)load(
          userptr, "vkGetDeviceGroupSurfacePresentModesKHR");
  context->GetPhysicalDevicePresentRectanglesKHR =
      (PFN_vkGetPhysicalDevicePresentRectanglesKHR)load(
          userptr, "vkGetPhysicalDevicePresentRectanglesKHR");
  context->GetSwapchainImagesKHR =
      (PFN_vkGetSwapchainImagesKHR)load(userptr, "vkGetSwapchainImagesKHR");
  context->QueuePresentKHR =
      (PFN_vkQueuePresentKHR)load(userptr, "vkQueuePresentKHR");
}

static int glad_vk_get_extensions(GladVulkanContext *context,
                                  VkPhysicalDevice physical_device,
                                  uint32_t *out_extension_count,
                                  char ***out_extensions) {
  uint32_t i;
  uint32_t instance_extension_count = 0;
  uint32_t device_extension_count = 0;
  uint32_t max_extension_count;
  uint32_t total_extension_count;
  char **extensions;
  VkExtensionProperties *ext_properties;
  VkResult result;

  if (context->EnumerateInstanceExtensionProperties == NULL ||
      (physical_device != NULL &&
       context->EnumerateDeviceExtensionProperties == NULL)) {
    return 0;
  }

  result = context->EnumerateInstanceExtensionProperties(
      NULL, &instance_extension_count, NULL);
  if (result != VK_SUCCESS) {
    return 0;
  }

  if (physical_device != NULL) {
    result = context->EnumerateDeviceExtensionProperties(
        physical_device, NULL, &device_extension_count, NULL);
    if (result != VK_SUCCESS) {
      return 0;
    }
  }

  total_extension_count = instance_extension_count + device_extension_count;
  max_extension_count = instance_extension_count > device_extension_count
                            ? instance_extension_count
                            : device_extension_count;

  ext_properties = (VkExtensionProperties *)malloc(
      max_extension_count * sizeof(VkExtensionProperties));
  if (ext_properties == NULL) {
    return 0;
  }

  result = context->EnumerateInstanceExtensionProperties(
      NULL, &instance_extension_count, ext_properties);
  if (result != VK_SUCCESS) {
    free((void *)ext_properties);
    return 0;
  }

  extensions = (char **)calloc(total_extension_count, sizeof(char *));
  if (extensions == NULL) {
    free((void *)ext_properties);
    return 0;
  }

  for (i = 0; i < instance_extension_count; ++i) {
    VkExtensionProperties ext = ext_properties[i];

    size_t extension_name_length = strlen(ext.extensionName) + 1;
    extensions[i] = (char *)malloc(extension_name_length * sizeof(char));
    memcpy(extensions[i], ext.extensionName,
           extension_name_length * sizeof(char));
  }

  if (physical_device != NULL) {
    result = context->EnumerateDeviceExtensionProperties(
        physical_device, NULL, &device_extension_count, ext_properties);
    if (result != VK_SUCCESS) {
      for (i = 0; i < instance_extension_count; ++i) {
        free((void *)extensions[i]);
      }
      free(extensions);
      return 0;
    }

    for (i = 0; i < device_extension_count; ++i) {
      VkExtensionProperties ext = ext_properties[i];

      size_t extension_name_length = strlen(ext.extensionName) + 1;
      extensions[instance_extension_count + i] =
          (char *)malloc(extension_name_length * sizeof(char));
      memcpy(extensions[instance_extension_count + i], ext.extensionName,
             extension_name_length * sizeof(char));
    }
  }

  free((void *)ext_properties);

  *out_extension_count = total_extension_count;
  *out_extensions = extensions;

  return 1;
}

static void glad_vk_free_extensions(uint32_t extension_count,
                                    char **extensions) {
  uint32_t i;

  for (i = 0; i < extension_count; ++i) {
    free((void *)(extensions[i]));
  }

  free((void *)extensions);
}

static int glad_vk_has_extension(const char *name, uint32_t extension_count,
                                 char **extensions) {
  uint32_t i;

  for (i = 0; i < extension_count; ++i) {
    if (strcmp(name, extensions[i]) == 0) {
      return 1;
    }
  }

  return 0;
}

static GLADapiproc glad_vk_get_proc_from_userptr(void *userptr,
                                                 const char *name) {
  return (GLAD_GNUC_EXTENSION(GLADapiproc(*)(const char *name)) userptr)(name);
}

static int glad_vk_find_extensions_vulkan(GladVulkanContext *context,
                                          VkPhysicalDevice physical_device) {
  uint32_t extension_count = 0;
  char **extensions = NULL;
  if (!glad_vk_get_extensions(context, physical_device, &extension_count,
                              &extensions))
    return 0;

  context->KHR_surface =
      glad_vk_has_extension("VK_KHR_surface", extension_count, extensions);
  context->KHR_swapchain =
      glad_vk_has_extension("VK_KHR_swapchain", extension_count, extensions);

  glad_vk_free_extensions(extension_count, extensions);

  return 1;
}

static int glad_vk_find_core_vulkan(GladVulkanContext *context,
                                    VkPhysicalDevice physical_device) {
  int major = 1;
  int minor = 0;

#ifdef VK_VERSION_1_1
  if (context->EnumerateInstanceVersion != NULL) {
    uint32_t version;
    VkResult result;

    result = context->EnumerateInstanceVersion(&version);
    if (result == VK_SUCCESS) {
      major = (int)VK_VERSION_MAJOR(version);
      minor = (int)VK_VERSION_MINOR(version);
    }
  }
#endif

  if (physical_device != NULL && context->GetPhysicalDeviceProperties != NULL) {
    VkPhysicalDeviceProperties properties;
    context->GetPhysicalDeviceProperties(physical_device, &properties);

    major = (int)VK_VERSION_MAJOR(properties.apiVersion);
    minor = (int)VK_VERSION_MINOR(properties.apiVersion);
  }

  context->VERSION_1_0 = (major == 1 && minor >= 0) || major > 1;
  context->VERSION_1_1 = (major == 1 && minor >= 1) || major > 1;
  context->VERSION_1_2 = (major == 1 && minor >= 2) || major > 1;

  return GLAD_MAKE_VERSION(major, minor);
}

int gladLoadVulkanContextUserPtr(GladVulkanContext *context,
                                 VkPhysicalDevice physical_device,
                                 GLADuserptrloadfunc load, void *userptr) {
  int version;

#ifdef VK_VERSION_1_1
  context->EnumerateInstanceVersion = (PFN_vkEnumerateInstanceVersion)load(
      userptr, "vkEnumerateInstanceVersion");
#endif
  version = glad_vk_find_core_vulkan(context, physical_device);
  if (!version) {
    return 0;
  }

  glad_vk_load_VK_VERSION_1_0(context, load, userptr);
  glad_vk_load_VK_VERSION_1_1(context, load, userptr);
  glad_vk_load_VK_VERSION_1_2(context, load, userptr);

  if (!glad_vk_find_extensions_vulkan(context, physical_device)) return 0;
  glad_vk_load_VK_KHR_surface(context, load, userptr);
  glad_vk_load_VK_KHR_swapchain(context, load, userptr);

  gladSetVulkanContext(context);

  return version;
}

int gladLoadVulkanUserPtr(VkPhysicalDevice physical_device,
                          GLADuserptrloadfunc load, void *userptr) {
  return gladLoadVulkanContextUserPtr(gladGetVulkanContext(), physical_device,
                                      load, userptr);
}

int gladLoadVulkanContext(GladVulkanContext *context,
                          VkPhysicalDevice physical_device, GLADloadfunc load) {
  return gladLoadVulkanContextUserPtr(context, physical_device,
                                      glad_vk_get_proc_from_userptr,
                                      GLAD_GNUC_EXTENSION(void *) load);
}

int gladLoadVulkan(VkPhysicalDevice physical_device, GLADloadfunc load) {
  return gladLoadVulkanContext(gladGetVulkanContext(), physical_device, load);
}

GladVulkanContext *gladGetVulkanContext() { return &glad_vulkan_context; }

void gladSetVulkanContext(GladVulkanContext *context) {
  glad_vulkan_context = *context;
}

#ifdef GLAD_VULKAN

#ifndef GLAD_LOADER_LIBRARY_C_
#define GLAD_LOADER_LIBRARY_C_

#include <stddef.h>
#include <stdlib.h>

#if GLAD_PLATFORM_WIN32
#include <windows.h>
#else
#include <dlfcn.h>
#endif

static void *glad_get_dlopen_handle(const char *lib_names[], int length) {
  void *handle = NULL;
  int i;

  for (i = 0; i < length; ++i) {
#if GLAD_PLATFORM_WIN32
#if GLAD_PLATFORM_UWP
    size_t buffer_size = (strlen(lib_names[i]) + 1) * sizeof(WCHAR);
    LPWSTR buffer = (LPWSTR)malloc(buffer_size);
    if (buffer != NULL) {
      int ret =
          MultiByteToWideChar(CP_ACP, 0, lib_names[i], -1, buffer, buffer_size);
      if (ret != 0) {
        handle = (void *)LoadPackagedLibrary(buffer, 0);
      }
      free((void *)buffer);
    }
#else
    handle = (void *)LoadLibraryA(lib_names[i]);
#endif
#else
    handle = dlopen(lib_names[i], RTLD_LAZY | RTLD_LOCAL);
#endif
    if (handle != NULL) {
      return handle;
    }
  }

  return NULL;
}

static void glad_close_dlopen_handle(void *handle) {
  if (handle != NULL) {
#if GLAD_PLATFORM_WIN32
    FreeLibrary((HMODULE)handle);
#else
    dlclose(handle);
#endif
  }
}

static GLADapiproc glad_dlsym_handle(void *handle, const char *name) {
  if (handle == NULL) {
    return NULL;
  }

#if GLAD_PLATFORM_WIN32
  return (GLADapiproc)GetProcAddress((HMODULE)handle, name);
#else
  return GLAD_GNUC_EXTENSION(GLADapiproc) dlsym(handle, name);
#endif
}

#endif /* GLAD_LOADER_LIBRARY_C_ */

static const char *DEVICE_FUNCTIONS[] = {
    "vkAcquireNextImage2KHR",
    "vkAcquireNextImageKHR",
    "vkAllocateCommandBuffers",
    "vkAllocateDescriptorSets",
    "vkAllocateMemory",
    "vkBeginCommandBuffer",
    "vkBindBufferMemory",
    "vkBindBufferMemory2",
    "vkBindImageMemory",
    "vkBindImageMemory2",
    "vkCmdBeginQuery",
    "vkCmdBeginRenderPass",
    "vkCmdBeginRenderPass2",
    "vkCmdBindDescriptorSets",
    "vkCmdBindIndexBuffer",
    "vkCmdBindPipeline",
    "vkCmdBindVertexBuffers",
    "vkCmdBlitImage",
    "vkCmdClearAttachments",
    "vkCmdClearColorImage",
    "vkCmdClearDepthStencilImage",
    "vkCmdCopyBuffer",
    "vkCmdCopyBufferToImage",
    "vkCmdCopyImage",
    "vkCmdCopyImageToBuffer",
    "vkCmdCopyQueryPoolResults",
    "vkCmdDispatch",
    "vkCmdDispatchBase",
    "vkCmdDispatchIndirect",
    "vkCmdDraw",
    "vkCmdDrawIndexed",
    "vkCmdDrawIndexedIndirect",
    "vkCmdDrawIndexedIndirectCount",
    "vkCmdDrawIndirect",
    "vkCmdDrawIndirectCount",
    "vkCmdEndQuery",
    "vkCmdEndRenderPass",
    "vkCmdEndRenderPass2",
    "vkCmdExecuteCommands",
    "vkCmdFillBuffer",
    "vkCmdNextSubpass",
    "vkCmdNextSubpass2",
    "vkCmdPipelineBarrier",
    "vkCmdPushConstants",
    "vkCmdResetEvent",
    "vkCmdResetQueryPool",
    "vkCmdResolveImage",
    "vkCmdSetBlendConstants",
    "vkCmdSetDepthBias",
    "vkCmdSetDepthBounds",
    "vkCmdSetDeviceMask",
    "vkCmdSetEvent",
    "vkCmdSetLineWidth",
    "vkCmdSetScissor",
    "vkCmdSetStencilCompareMask",
    "vkCmdSetStencilReference",
    "vkCmdSetStencilWriteMask",
    "vkCmdSetViewport",
    "vkCmdUpdateBuffer",
    "vkCmdWaitEvents",
    "vkCmdWriteTimestamp",
    "vkCreateBuffer",
    "vkCreateBufferView",
    "vkCreateCommandPool",
    "vkCreateComputePipelines",
    "vkCreateDescriptorPool",
    "vkCreateDescriptorSetLayout",
    "vkCreateDescriptorUpdateTemplate",
    "vkCreateEvent",
    "vkCreateFence",
    "vkCreateFramebuffer",
    "vkCreateGraphicsPipelines",
    "vkCreateImage",
    "vkCreateImageView",
    "vkCreatePipelineCache",
    "vkCreatePipelineLayout",
    "vkCreateQueryPool",
    "vkCreateRenderPass",
    "vkCreateRenderPass2",
    "vkCreateSampler",
    "vkCreateSamplerYcbcrConversion",
    "vkCreateSemaphore",
    "vkCreateShaderModule",
    "vkCreateSwapchainKHR",
    "vkDestroyBuffer",
    "vkDestroyBufferView",
    "vkDestroyCommandPool",
    "vkDestroyDescriptorPool",
    "vkDestroyDescriptorSetLayout",
    "vkDestroyDescriptorUpdateTemplate",
    "vkDestroyDevice",
    "vkDestroyEvent",
    "vkDestroyFence",
    "vkDestroyFramebuffer",
    "vkDestroyImage",
    "vkDestroyImageView",
    "vkDestroyPipeline",
    "vkDestroyPipelineCache",
    "vkDestroyPipelineLayout",
    "vkDestroyQueryPool",
    "vkDestroyRenderPass",
    "vkDestroySampler",
    "vkDestroySamplerYcbcrConversion",
    "vkDestroySemaphore",
    "vkDestroyShaderModule",
    "vkDestroySwapchainKHR",
    "vkDeviceWaitIdle",
    "vkEndCommandBuffer",
    "vkFlushMappedMemoryRanges",
    "vkFreeCommandBuffers",
    "vkFreeDescriptorSets",
    "vkFreeMemory",
    "vkGetBufferDeviceAddress",
    "vkGetBufferMemoryRequirements",
    "vkGetBufferMemoryRequirements2",
    "vkGetBufferOpaqueCaptureAddress",
    "vkGetDescriptorSetLayoutSupport",
    "vkGetDeviceGroupPeerMemoryFeatures",
    "vkGetDeviceGroupPresentCapabilitiesKHR",
    "vkGetDeviceGroupSurfacePresentModesKHR",
    "vkGetDeviceMemoryCommitment",
    "vkGetDeviceMemoryOpaqueCaptureAddress",
    "vkGetDeviceProcAddr",
    "vkGetDeviceQueue",
    "vkGetDeviceQueue2",
    "vkGetEventStatus",
    "vkGetFenceStatus",
    "vkGetImageMemoryRequirements",
    "vkGetImageMemoryRequirements2",
    "vkGetImageSparseMemoryRequirements",
    "vkGetImageSparseMemoryRequirements2",
    "vkGetImageSubresourceLayout",
    "vkGetPipelineCacheData",
    "vkGetQueryPoolResults",
    "vkGetRenderAreaGranularity",
    "vkGetSemaphoreCounterValue",
    "vkGetSwapchainImagesKHR",
    "vkInvalidateMappedMemoryRanges",
    "vkMapMemory",
    "vkMergePipelineCaches",
    "vkQueueBindSparse",
    "vkQueuePresentKHR",
    "vkQueueSubmit",
    "vkQueueWaitIdle",
    "vkResetCommandBuffer",
    "vkResetCommandPool",
    "vkResetDescriptorPool",
    "vkResetEvent",
    "vkResetFences",
    "vkResetQueryPool",
    "vkSetEvent",
    "vkSignalSemaphore",
    "vkTrimCommandPool",
    "vkUnmapMemory",
    "vkUpdateDescriptorSetWithTemplate",
    "vkUpdateDescriptorSets",
    "vkWaitForFences",
    "vkWaitSemaphores",
};

static int glad_vulkan_is_device_function(const char *name) {
  /* Exists as a workaround for:
   * https://github.com/KhronosGroup/Vulkan-LoaderAndValidationLayers/issues/2323
   *
   * `vkGetDeviceProcAddr` does not return NULL for non-device functions.
   */
  int i;
  int length = sizeof(DEVICE_FUNCTIONS) / sizeof(DEVICE_FUNCTIONS[0]);

  for (i = 0; i < length; ++i) {
    if (strcmp(DEVICE_FUNCTIONS[i], name) == 0) {
      return 1;
    }
  }

  return 0;
}

struct _glad_vulkan_userptr {
  void *vk_handle;
  VkInstance vk_instance;
  VkDevice vk_device;
  PFN_vkGetInstanceProcAddr get_instance_proc_addr;
  PFN_vkGetDeviceProcAddr get_device_proc_addr;
};

static GLADapiproc glad_vulkan_get_proc(void *vuserptr, const char *name) {
  struct _glad_vulkan_userptr userptr =
      *(struct _glad_vulkan_userptr *)vuserptr;
  PFN_vkVoidFunction result = NULL;

  if (userptr.vk_device != NULL && glad_vulkan_is_device_function(name)) {
    result = userptr.get_device_proc_addr(userptr.vk_device, name);
  }

  if (result == NULL && userptr.vk_instance != NULL) {
    result = userptr.get_instance_proc_addr(userptr.vk_instance, name);
  }

  if (result == NULL) {
    result = (PFN_vkVoidFunction)glad_dlsym_handle(userptr.vk_handle, name);
  }

  return (GLADapiproc)result;
}

static void *_vulkan_handle;

static void *glad_vulkan_dlopen_handle(void) {
  static const char *NAMES[] = {
#if GLAD_PLATFORM_APPLE
    "libvulkan.1.dylib",
#elif GLAD_PLATFORM_WIN32
    "vulkan-1.dll",
    "vulkan.dll",
#else
    "libvulkan.so.1",
    "libvulkan.so",
#endif
  };

  if (_vulkan_handle == NULL) {
    _vulkan_handle =
        glad_get_dlopen_handle(NAMES, sizeof(NAMES) / sizeof(NAMES[0]));
  }

  return _vulkan_handle;
}

static struct _glad_vulkan_userptr glad_vulkan_build_userptr(
    void *handle, VkInstance instance, VkDevice device) {
  struct _glad_vulkan_userptr userptr;
  userptr.vk_handle = handle;
  userptr.vk_instance = instance;
  userptr.vk_device = device;
  userptr.get_instance_proc_addr = (PFN_vkGetInstanceProcAddr)glad_dlsym_handle(
      handle, "vkGetInstanceProcAddr");
  userptr.get_device_proc_addr =
      (PFN_vkGetDeviceProcAddr)glad_dlsym_handle(handle, "vkGetDeviceProcAddr");
  return userptr;
}

int gladLoaderLoadVulkanContext(GladVulkanContext *context, VkInstance instance,
                                VkPhysicalDevice physical_device,
                                VkDevice device) {
  int version = 0;
  void *handle = NULL;
  int did_load = 0;
  struct _glad_vulkan_userptr userptr;

  did_load = _vulkan_handle == NULL;
  handle = glad_vulkan_dlopen_handle();
  if (handle != NULL) {
    userptr = glad_vulkan_build_userptr(handle, instance, device);

    if (userptr.get_instance_proc_addr != NULL &&
        userptr.get_device_proc_addr != NULL) {
      version = gladLoadVulkanContextUserPtr(context, physical_device,
                                             glad_vulkan_get_proc, &userptr);
    }

    if (!version && did_load) {
      gladLoaderUnloadVulkan();
    }
  }

  return version;
}

int gladLoaderLoadVulkan(VkInstance instance, VkPhysicalDevice physical_device,
                         VkDevice device) {
  return gladLoaderLoadVulkanContext(gladGetVulkanContext(), instance,
                                     physical_device, device);
}

void gladLoaderUnloadVulkan(void) {
  if (_vulkan_handle != NULL) {
    glad_close_dlopen_handle(_vulkan_handle);
    _vulkan_handle = NULL;
  }
}

#endif /* GLAD_VULKAN */
