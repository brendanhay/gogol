{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessApproval.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AccessApproval.Types.Product where

import Network.Google.AccessApproval.Types.Sum
import Network.Google.Prelude

-- | Response to listing of ApprovalRequest objects.
--
-- /See:/ 'listApprovalRequestsResponse' smart constructor.
data ListApprovalRequestsResponse =
  ListApprovalRequestsResponse'
    { _larrNextPageToken :: !(Maybe Text)
    , _larrApprovalRequests :: !(Maybe [ApprovalRequest])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListApprovalRequestsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrNextPageToken'
--
-- * 'larrApprovalRequests'
listApprovalRequestsResponse
    :: ListApprovalRequestsResponse
listApprovalRequestsResponse =
  ListApprovalRequestsResponse'
    {_larrNextPageToken = Nothing, _larrApprovalRequests = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more.
larrNextPageToken :: Lens' ListApprovalRequestsResponse (Maybe Text)
larrNextPageToken
  = lens _larrNextPageToken
      (\ s a -> s{_larrNextPageToken = a})

-- | Approval request details.
larrApprovalRequests :: Lens' ListApprovalRequestsResponse [ApprovalRequest]
larrApprovalRequests
  = lens _larrApprovalRequests
      (\ s a -> s{_larrApprovalRequests = a})
      . _Default
      . _Coerce

instance FromJSON ListApprovalRequestsResponse where
        parseJSON
          = withObject "ListApprovalRequestsResponse"
              (\ o ->
                 ListApprovalRequestsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "approvalRequests" .!= mempty))

instance ToJSON ListApprovalRequestsResponse where
        toJSON ListApprovalRequestsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larrNextPageToken,
                  ("approvalRequests" .=) <$> _larrApprovalRequests])

-- | A decision that has been made to approve access to a resource.
--
-- /See:/ 'approveDecision' smart constructor.
data ApproveDecision =
  ApproveDecision'
    { _adApproveTime :: !(Maybe DateTime')
    , _adExpireTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApproveDecision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adApproveTime'
--
-- * 'adExpireTime'
approveDecision
    :: ApproveDecision
approveDecision =
  ApproveDecision' {_adApproveTime = Nothing, _adExpireTime = Nothing}


-- | The time at which approval was granted.
adApproveTime :: Lens' ApproveDecision (Maybe UTCTime)
adApproveTime
  = lens _adApproveTime
      (\ s a -> s{_adApproveTime = a})
      . mapping _DateTime

-- | The time at which the approval expires.
adExpireTime :: Lens' ApproveDecision (Maybe UTCTime)
adExpireTime
  = lens _adExpireTime (\ s a -> s{_adExpireTime = a})
      . mapping _DateTime

instance FromJSON ApproveDecision where
        parseJSON
          = withObject "ApproveDecision"
              (\ o ->
                 ApproveDecision' <$>
                   (o .:? "approveTime") <*> (o .:? "expireTime"))

instance ToJSON ApproveDecision where
        toJSON ApproveDecision'{..}
          = object
              (catMaybes
                 [("approveTime" .=) <$> _adApproveTime,
                  ("expireTime" .=) <$> _adExpireTime])

-- | Home office and physical location of the principal.
--
-- /See:/ 'accessLocations' smart constructor.
data AccessLocations =
  AccessLocations'
    { _alPrincipalOfficeCountry :: !(Maybe Text)
    , _alPrincipalPhysicalLocationCountry :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessLocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alPrincipalOfficeCountry'
--
-- * 'alPrincipalPhysicalLocationCountry'
accessLocations
    :: AccessLocations
accessLocations =
  AccessLocations'
    { _alPrincipalOfficeCountry = Nothing
    , _alPrincipalPhysicalLocationCountry = Nothing
    }


-- | The \"home office\" location of the principal. A two-letter country code
-- (ISO 3166-1 alpha-2), such as \"US\", \"DE\" or \"GB\" or a region code.
-- In some limited situations Google systems may refer refer to a region
-- code instead of a country code. Possible Region Codes: * ASI: Asia *
-- EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM:
-- South America * ANT: Antarctica * ANY: Any location
alPrincipalOfficeCountry :: Lens' AccessLocations (Maybe Text)
alPrincipalOfficeCountry
  = lens _alPrincipalOfficeCountry
      (\ s a -> s{_alPrincipalOfficeCountry = a})

-- | Physical location of the principal at the time of the access. A
-- two-letter country code (ISO 3166-1 alpha-2), such as \"US\", \"DE\" or
-- \"GB\" or a region code. In some limited situations Google systems may
-- refer refer to a region code instead of a country code. Possible Region
-- Codes: * ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM:
-- North America * SAM: South America * ANT: Antarctica * ANY: Any location
alPrincipalPhysicalLocationCountry :: Lens' AccessLocations (Maybe Text)
alPrincipalPhysicalLocationCountry
  = lens _alPrincipalPhysicalLocationCountry
      (\ s a -> s{_alPrincipalPhysicalLocationCountry = a})

instance FromJSON AccessLocations where
        parseJSON
          = withObject "AccessLocations"
              (\ o ->
                 AccessLocations' <$>
                   (o .:? "principalOfficeCountry") <*>
                     (o .:? "principalPhysicalLocationCountry"))

instance ToJSON AccessLocations where
        toJSON AccessLocations'{..}
          = object
              (catMaybes
                 [("principalOfficeCountry" .=) <$>
                    _alPrincipalOfficeCountry,
                  ("principalPhysicalLocationCountry" .=) <$>
                    _alPrincipalPhysicalLocationCountry])

-- | A decision that has been made to dismiss an approval request.
--
-- /See:/ 'dismissDecision' smart constructor.
data DismissDecision =
  DismissDecision'
    { _ddImplicit :: !(Maybe Bool)
    , _ddDismissTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DismissDecision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddImplicit'
--
-- * 'ddDismissTime'
dismissDecision
    :: DismissDecision
dismissDecision =
  DismissDecision' {_ddImplicit = Nothing, _ddDismissTime = Nothing}


-- | This field will be true if the ApprovalRequest was implcitly dismissed
-- due to inaction by the access approval approvers (the request is not
-- acted on by the approvers before the exiration time).
ddImplicit :: Lens' DismissDecision (Maybe Bool)
ddImplicit
  = lens _ddImplicit (\ s a -> s{_ddImplicit = a})

-- | The time at which the approval request was dismissed.
ddDismissTime :: Lens' DismissDecision (Maybe UTCTime)
ddDismissTime
  = lens _ddDismissTime
      (\ s a -> s{_ddDismissTime = a})
      . mapping _DateTime

instance FromJSON DismissDecision where
        parseJSON
          = withObject "DismissDecision"
              (\ o ->
                 DismissDecision' <$>
                   (o .:? "implicit") <*> (o .:? "dismissTime"))

instance ToJSON DismissDecision where
        toJSON DismissDecision'{..}
          = object
              (catMaybes
                 [("implicit" .=) <$> _ddImplicit,
                  ("dismissTime" .=) <$> _ddDismissTime])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The properties associated with the resource of the request.
--
-- /See:/ 'resourceProperties' smart constructor.
newtype ResourceProperties =
  ResourceProperties'
    { _rpExcludesDescendants :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpExcludesDescendants'
resourceProperties
    :: ResourceProperties
resourceProperties = ResourceProperties' {_rpExcludesDescendants = Nothing}


-- | Whether an approval will exclude the descendants of the resource being
-- requested.
rpExcludesDescendants :: Lens' ResourceProperties (Maybe Bool)
rpExcludesDescendants
  = lens _rpExcludesDescendants
      (\ s a -> s{_rpExcludesDescendants = a})

instance FromJSON ResourceProperties where
        parseJSON
          = withObject "ResourceProperties"
              (\ o ->
                 ResourceProperties' <$>
                   (o .:? "excludesDescendants"))

instance ToJSON ResourceProperties where
        toJSON ResourceProperties'{..}
          = object
              (catMaybes
                 [("excludesDescendants" .=) <$>
                    _rpExcludesDescendants])

-- | Settings on a Project\/Folder\/Organization related to Access Approval.
--
-- /See:/ 'accessApprovalSettings' smart constructor.
data AccessApprovalSettings =
  AccessApprovalSettings'
    { _aasEnrolledServices :: !(Maybe [EnrolledService])
    , _aasEnrolledAncestor :: !(Maybe Bool)
    , _aasName :: !(Maybe Text)
    , _aasNotificationEmails :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aasEnrolledServices'
--
-- * 'aasEnrolledAncestor'
--
-- * 'aasName'
--
-- * 'aasNotificationEmails'
accessApprovalSettings
    :: AccessApprovalSettings
accessApprovalSettings =
  AccessApprovalSettings'
    { _aasEnrolledServices = Nothing
    , _aasEnrolledAncestor = Nothing
    , _aasName = Nothing
    , _aasNotificationEmails = Nothing
    }


-- | A list of Google Cloud Services for which the given resource has Access
-- Approval enrolled. Access requests for the resource given by name
-- against any of these services contained here will be required to have
-- explicit approval. If name refers to an organization, enrollment can be
-- done for individual services. If name refers to a folder or project,
-- enrollment can only be done on an all or nothing basis. If a
-- cloud_product is repeated in this list, the first entry will be honored
-- and all following entries will be discarded. A maximum of 10 enrolled
-- services will be enforced, to be expanded as the set of supported
-- services is expanded.
aasEnrolledServices :: Lens' AccessApprovalSettings [EnrolledService]
aasEnrolledServices
  = lens _aasEnrolledServices
      (\ s a -> s{_aasEnrolledServices = a})
      . _Default
      . _Coerce

-- | Output only. This field is read only (not settable via
-- UpdateAccessAccessApprovalSettings method). If the field is true, that
-- indicates that at least one service is enrolled for Access Approval in
-- one or more ancestors of the Project or Folder (this field will always
-- be unset for the organization since organizations do not have
-- ancestors).
aasEnrolledAncestor :: Lens' AccessApprovalSettings (Maybe Bool)
aasEnrolledAncestor
  = lens _aasEnrolledAncestor
      (\ s a -> s{_aasEnrolledAncestor = a})

-- | The resource name of the settings. Format is one of: *
-- \"projects\/{project}\/accessApprovalSettings\" *
-- \"folders\/{folder}\/accessApprovalSettings\" *
-- \"organizations\/{organization}\/accessApprovalSettings\"
aasName :: Lens' AccessApprovalSettings (Maybe Text)
aasName = lens _aasName (\ s a -> s{_aasName = a})

-- | A list of email addresses to which notifications relating to approval
-- requests should be sent. Notifications relating to a resource will be
-- sent to all emails in the settings of ancestor resources of that
-- resource. A maximum of 50 email addresses are allowed.
aasNotificationEmails :: Lens' AccessApprovalSettings [Text]
aasNotificationEmails
  = lens _aasNotificationEmails
      (\ s a -> s{_aasNotificationEmails = a})
      . _Default
      . _Coerce

instance FromJSON AccessApprovalSettings where
        parseJSON
          = withObject "AccessApprovalSettings"
              (\ o ->
                 AccessApprovalSettings' <$>
                   (o .:? "enrolledServices" .!= mempty) <*>
                     (o .:? "enrolledAncestor")
                     <*> (o .:? "name")
                     <*> (o .:? "notificationEmails" .!= mempty))

instance ToJSON AccessApprovalSettings where
        toJSON AccessApprovalSettings'{..}
          = object
              (catMaybes
                 [("enrolledServices" .=) <$> _aasEnrolledServices,
                  ("enrolledAncestor" .=) <$> _aasEnrolledAncestor,
                  ("name" .=) <$> _aasName,
                  ("notificationEmails" .=) <$>
                    _aasNotificationEmails])

-- | A request for the customer to approve access to a resource.
--
-- /See:/ 'approvalRequest' smart constructor.
data ApprovalRequest =
  ApprovalRequest'
    { _arRequestedResourceName :: !(Maybe Text)
    , _arRequestedResourceProperties :: !(Maybe ResourceProperties)
    , _arRequestedExpiration :: !(Maybe DateTime')
    , _arRequestTime :: !(Maybe DateTime')
    , _arRequestedReason :: !(Maybe AccessReason)
    , _arName :: !(Maybe Text)
    , _arApprove :: !(Maybe ApproveDecision)
    , _arDismiss :: !(Maybe DismissDecision)
    , _arRequestedLocations :: !(Maybe AccessLocations)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApprovalRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arRequestedResourceName'
--
-- * 'arRequestedResourceProperties'
--
-- * 'arRequestedExpiration'
--
-- * 'arRequestTime'
--
-- * 'arRequestedReason'
--
-- * 'arName'
--
-- * 'arApprove'
--
-- * 'arDismiss'
--
-- * 'arRequestedLocations'
approvalRequest
    :: ApprovalRequest
approvalRequest =
  ApprovalRequest'
    { _arRequestedResourceName = Nothing
    , _arRequestedResourceProperties = Nothing
    , _arRequestedExpiration = Nothing
    , _arRequestTime = Nothing
    , _arRequestedReason = Nothing
    , _arName = Nothing
    , _arApprove = Nothing
    , _arDismiss = Nothing
    , _arRequestedLocations = Nothing
    }


-- | The resource for which approval is being requested. The format of the
-- resource name is defined at
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. The resource
-- name here may either be a \"full\" resource name (e.g.
-- \"\/\/library.googleapis.com\/shelves\/shelf1\/books\/book2\") or a
-- \"relative\" resource name (e.g. \"shelves\/shelf1\/books\/book2\") as
-- described in the resource name specification.
arRequestedResourceName :: Lens' ApprovalRequest (Maybe Text)
arRequestedResourceName
  = lens _arRequestedResourceName
      (\ s a -> s{_arRequestedResourceName = a})

-- | Properties related to the resource represented by
-- requested_resource_name.
arRequestedResourceProperties :: Lens' ApprovalRequest (Maybe ResourceProperties)
arRequestedResourceProperties
  = lens _arRequestedResourceProperties
      (\ s a -> s{_arRequestedResourceProperties = a})

-- | The requested expiration for the approval. If the request is approved,
-- access will be granted from the time of approval until the expiration
-- time.
arRequestedExpiration :: Lens' ApprovalRequest (Maybe UTCTime)
arRequestedExpiration
  = lens _arRequestedExpiration
      (\ s a -> s{_arRequestedExpiration = a})
      . mapping _DateTime

-- | The time at which approval was requested.
arRequestTime :: Lens' ApprovalRequest (Maybe UTCTime)
arRequestTime
  = lens _arRequestTime
      (\ s a -> s{_arRequestTime = a})
      . mapping _DateTime

-- | The justification for which approval is being requested.
arRequestedReason :: Lens' ApprovalRequest (Maybe AccessReason)
arRequestedReason
  = lens _arRequestedReason
      (\ s a -> s{_arRequestedReason = a})

-- | The resource name of the request. Format is
-- \"{projects|folders|organizations}\/{id}\/approvalRequests\/{approval_request}\".
arName :: Lens' ApprovalRequest (Maybe Text)
arName = lens _arName (\ s a -> s{_arName = a})

-- | Access was approved.
arApprove :: Lens' ApprovalRequest (Maybe ApproveDecision)
arApprove
  = lens _arApprove (\ s a -> s{_arApprove = a})

-- | The request was dismissed.
arDismiss :: Lens' ApprovalRequest (Maybe DismissDecision)
arDismiss
  = lens _arDismiss (\ s a -> s{_arDismiss = a})

-- | The locations for which approval is being requested.
arRequestedLocations :: Lens' ApprovalRequest (Maybe AccessLocations)
arRequestedLocations
  = lens _arRequestedLocations
      (\ s a -> s{_arRequestedLocations = a})

instance FromJSON ApprovalRequest where
        parseJSON
          = withObject "ApprovalRequest"
              (\ o ->
                 ApprovalRequest' <$>
                   (o .:? "requestedResourceName") <*>
                     (o .:? "requestedResourceProperties")
                     <*> (o .:? "requestedExpiration")
                     <*> (o .:? "requestTime")
                     <*> (o .:? "requestedReason")
                     <*> (o .:? "name")
                     <*> (o .:? "approve")
                     <*> (o .:? "dismiss")
                     <*> (o .:? "requestedLocations"))

instance ToJSON ApprovalRequest where
        toJSON ApprovalRequest'{..}
          = object
              (catMaybes
                 [("requestedResourceName" .=) <$>
                    _arRequestedResourceName,
                  ("requestedResourceProperties" .=) <$>
                    _arRequestedResourceProperties,
                  ("requestedExpiration" .=) <$>
                    _arRequestedExpiration,
                  ("requestTime" .=) <$> _arRequestTime,
                  ("requestedReason" .=) <$> _arRequestedReason,
                  ("name" .=) <$> _arName,
                  ("approve" .=) <$> _arApprove,
                  ("dismiss" .=) <$> _arDismiss,
                  ("requestedLocations" .=) <$> _arRequestedLocations])

-- | Request to dismiss an approval request.
--
-- /See:/ 'dismissApprovalRequestMessage' smart constructor.
data DismissApprovalRequestMessage =
  DismissApprovalRequestMessage'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DismissApprovalRequestMessage' with the minimum fields required to make a request.
--
dismissApprovalRequestMessage
    :: DismissApprovalRequestMessage
dismissApprovalRequestMessage = DismissApprovalRequestMessage'


instance FromJSON DismissApprovalRequestMessage where
        parseJSON
          = withObject "DismissApprovalRequestMessage"
              (\ o -> pure DismissApprovalRequestMessage')

instance ToJSON DismissApprovalRequestMessage where
        toJSON = const emptyObject

-- | Request to approve an ApprovalRequest.
--
-- /See:/ 'approveApprovalRequestMessage' smart constructor.
newtype ApproveApprovalRequestMessage =
  ApproveApprovalRequestMessage'
    { _aarmExpireTime :: Maybe DateTime'
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApproveApprovalRequestMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aarmExpireTime'
approveApprovalRequestMessage
    :: ApproveApprovalRequestMessage
approveApprovalRequestMessage =
  ApproveApprovalRequestMessage' {_aarmExpireTime = Nothing}


-- | The expiration time of this approval.
aarmExpireTime :: Lens' ApproveApprovalRequestMessage (Maybe UTCTime)
aarmExpireTime
  = lens _aarmExpireTime
      (\ s a -> s{_aarmExpireTime = a})
      . mapping _DateTime

instance FromJSON ApproveApprovalRequestMessage where
        parseJSON
          = withObject "ApproveApprovalRequestMessage"
              (\ o ->
                 ApproveApprovalRequestMessage' <$>
                   (o .:? "expireTime"))

instance ToJSON ApproveApprovalRequestMessage where
        toJSON ApproveApprovalRequestMessage'{..}
          = object
              (catMaybes [("expireTime" .=) <$> _aarmExpireTime])

-- | Represents the enrollment of a cloud resource into a specific service.
--
-- /See:/ 'enrolledService' smart constructor.
data EnrolledService =
  EnrolledService'
    { _esCloudProduct :: !(Maybe Text)
    , _esEnrollmentLevel :: !(Maybe EnrolledServiceEnrollmentLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnrolledService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esCloudProduct'
--
-- * 'esEnrollmentLevel'
enrolledService
    :: EnrolledService
enrolledService =
  EnrolledService' {_esCloudProduct = Nothing, _esEnrollmentLevel = Nothing}


-- | The product for which Access Approval will be enrolled. Allowed values
-- are listed below (case-sensitive): * all * GA * App Engine * BigQuery *
-- Cloud Bigtable * Cloud Key Management Service * Compute Engine * Cloud
-- Dataflow * Cloud DLP * Cloud EKM * Cloud HSM * Cloud Identity and Access
-- Management * Cloud Logging * Cloud Pub\/Sub * Cloud Spanner * Cloud SQL
-- * Cloud Storage * Google Kubernetes Engine * Persistent Disk Note: These
-- values are supported as input for legacy purposes, but will not be
-- returned from the API. * all * ga-only * appengine.googleapis.com *
-- bigquery.googleapis.com * bigtable.googleapis.com *
-- container.googleapis.com * cloudkms.googleapis.com *
-- cloudsql.googleapis.com * compute.googleapis.com *
-- dataflow.googleapis.com * dlp.googleapis.com * iam.googleapis.com *
-- logging.googleapis.com * pubsub.googleapis.com * spanner.googleapis.com
-- * storage.googleapis.com Calls to UpdateAccessApprovalSettings using
-- \'all\' or any of the XXX.googleapis.com will be translated to the
-- associated product name (\'all\', \'App Engine\', etc.). Note: \'all\'
-- will enroll the resource in all products supported at both \'GA\' and
-- \'Preview\' levels. More information about levels of support is
-- available at
-- https:\/\/cloud.google.com\/access-approval\/docs\/supported-services
esCloudProduct :: Lens' EnrolledService (Maybe Text)
esCloudProduct
  = lens _esCloudProduct
      (\ s a -> s{_esCloudProduct = a})

-- | The enrollment level of the service.
esEnrollmentLevel :: Lens' EnrolledService (Maybe EnrolledServiceEnrollmentLevel)
esEnrollmentLevel
  = lens _esEnrollmentLevel
      (\ s a -> s{_esEnrollmentLevel = a})

instance FromJSON EnrolledService where
        parseJSON
          = withObject "EnrolledService"
              (\ o ->
                 EnrolledService' <$>
                   (o .:? "cloudProduct") <*> (o .:? "enrollmentLevel"))

instance ToJSON EnrolledService where
        toJSON EnrolledService'{..}
          = object
              (catMaybes
                 [("cloudProduct" .=) <$> _esCloudProduct,
                  ("enrollmentLevel" .=) <$> _esEnrollmentLevel])

--
-- /See:/ 'accessReason' smart constructor.
data AccessReason =
  AccessReason'
    { _arType :: !(Maybe AccessReasonType)
    , _arDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arType'
--
-- * 'arDetail'
accessReason
    :: AccessReason
accessReason = AccessReason' {_arType = Nothing, _arDetail = Nothing}


-- | Type of access justification.
arType :: Lens' AccessReason (Maybe AccessReasonType)
arType = lens _arType (\ s a -> s{_arType = a})

-- | More detail about certain reason types. See comments for each type
-- above.
arDetail :: Lens' AccessReason (Maybe Text)
arDetail = lens _arDetail (\ s a -> s{_arDetail = a})

instance FromJSON AccessReason where
        parseJSON
          = withObject "AccessReason"
              (\ o ->
                 AccessReason' <$>
                   (o .:? "type") <*> (o .:? "detail"))

instance ToJSON AccessReason where
        toJSON AccessReason'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _arType,
                  ("detail" .=) <$> _arDetail])
