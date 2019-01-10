{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessContextManager.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AccessContextManager.Types.Product where

import           Network.Google.AccessContextManager.Types.Sum
import           Network.Google.Prelude

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | \`BasicLevel\` is an \`AccessLevel\` using a set of recommended
-- features.
--
-- /See:/ 'basicLevel' smart constructor.
data BasicLevel = BasicLevel'
    { _blConditions        :: !(Maybe [Condition])
    , _blCombiningFunction :: !(Maybe BasicLevelCombiningFunction)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BasicLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blConditions'
--
-- * 'blCombiningFunction'
basicLevel
    :: BasicLevel
basicLevel =
    BasicLevel'
    { _blConditions = Nothing
    , _blCombiningFunction = Nothing
    }

-- | Required. A list of requirements for the \`AccessLevel\` to be granted.
blConditions :: Lens' BasicLevel [Condition]
blConditions
  = lens _blConditions (\ s a -> s{_blConditions = a})
      . _Default
      . _Coerce

-- | How the \`conditions\` list should be combined to determine if a request
-- is granted this \`AccessLevel\`. If AND is used, each \`Condition\` in
-- \`conditions\` must be satisfied for the \`AccessLevel\` to be applied.
-- If OR is used, at least one \`Condition\` in \`conditions\` must be
-- satisfied for the \`AccessLevel\` to be applied. Default behavior is
-- AND.
blCombiningFunction :: Lens' BasicLevel (Maybe BasicLevelCombiningFunction)
blCombiningFunction
  = lens _blCombiningFunction
      (\ s a -> s{_blCombiningFunction = a})

instance FromJSON BasicLevel where
        parseJSON
          = withObject "BasicLevel"
              (\ o ->
                 BasicLevel' <$>
                   (o .:? "conditions" .!= mempty) <*>
                     (o .:? "combiningFunction"))

instance ToJSON BasicLevel where
        toJSON BasicLevel'{..}
          = object
              (catMaybes
                 [("conditions" .=) <$> _blConditions,
                  ("combiningFunction" .=) <$> _blCombiningFunction])

-- | An \`AccessLevel\` is a label that can be applied to requests to GCP
-- services, along with a list of requirements necessary for the label to
-- be applied.
--
-- /See:/ 'accessLevel' smart constructor.
data AccessLevel = AccessLevel'
    { _alBasic       :: !(Maybe BasicLevel)
    , _alUpdateTime  :: !(Maybe DateTime')
    , _alName        :: !(Maybe Text)
    , _alTitle       :: !(Maybe Text)
    , _alDescription :: !(Maybe Text)
    , _alCreateTime  :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alBasic'
--
-- * 'alUpdateTime'
--
-- * 'alName'
--
-- * 'alTitle'
--
-- * 'alDescription'
--
-- * 'alCreateTime'
accessLevel
    :: AccessLevel
accessLevel =
    AccessLevel'
    { _alBasic = Nothing
    , _alUpdateTime = Nothing
    , _alName = Nothing
    , _alTitle = Nothing
    , _alDescription = Nothing
    , _alCreateTime = Nothing
    }

-- | A \`BasicLevel\` composed of \`Conditions\`.
alBasic :: Lens' AccessLevel (Maybe BasicLevel)
alBasic = lens _alBasic (\ s a -> s{_alBasic = a})

-- | Output only. Time the \`AccessLevel\` was updated in UTC.
alUpdateTime :: Lens' AccessLevel (Maybe UTCTime)
alUpdateTime
  = lens _alUpdateTime (\ s a -> s{_alUpdateTime = a})
      . mapping _DateTime

-- | Required. Resource name for the Access Level. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/accessLevels\/{short_name}\`
alName :: Lens' AccessLevel (Maybe Text)
alName = lens _alName (\ s a -> s{_alName = a})

-- | Human readable title. Must be unique within the Policy.
alTitle :: Lens' AccessLevel (Maybe Text)
alTitle = lens _alTitle (\ s a -> s{_alTitle = a})

-- | Description of the \`AccessLevel\` and its use. Does not affect
-- behavior.
alDescription :: Lens' AccessLevel (Maybe Text)
alDescription
  = lens _alDescription
      (\ s a -> s{_alDescription = a})

-- | Output only. Time the \`AccessLevel\` was created in UTC.
alCreateTime :: Lens' AccessLevel (Maybe UTCTime)
alCreateTime
  = lens _alCreateTime (\ s a -> s{_alCreateTime = a})
      . mapping _DateTime

instance FromJSON AccessLevel where
        parseJSON
          = withObject "AccessLevel"
              (\ o ->
                 AccessLevel' <$>
                   (o .:? "basic") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON AccessLevel where
        toJSON AccessLevel'{..}
          = object
              (catMaybes
                 [("basic" .=) <$> _alBasic,
                  ("updateTime" .=) <$> _alUpdateTime,
                  ("name" .=) <$> _alName, ("title" .=) <$> _alTitle,
                  ("description" .=) <$> _alDescription,
                  ("createTime" .=) <$> _alCreateTime])

-- | \`ServicePerimeterConfig\` specifies a set of GCP resources that
-- describe specific Service Perimeter configuration.
--
-- /See:/ 'servicePerimeterConfig' smart constructor.
data ServicePerimeterConfig = ServicePerimeterConfig'
    { _spcUnrestrictedServices :: !(Maybe [Text])
    , _spcResources            :: !(Maybe [Text])
    , _spcRestrictedServices   :: !(Maybe [Text])
    , _spcAccessLevels         :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicePerimeterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spcUnrestrictedServices'
--
-- * 'spcResources'
--
-- * 'spcRestrictedServices'
--
-- * 'spcAccessLevels'
servicePerimeterConfig
    :: ServicePerimeterConfig
servicePerimeterConfig =
    ServicePerimeterConfig'
    { _spcUnrestrictedServices = Nothing
    , _spcResources = Nothing
    , _spcRestrictedServices = Nothing
    , _spcAccessLevels = Nothing
    }

-- | GCP services that are not subject to the Service Perimeter restrictions.
-- May contain a list of services or a single wildcard \"*\". For example,
-- if \`logging.googleapis.com\` is unrestricted, users can access logs
-- inside the perimeter as if the perimeter doesn\'t exist, and it also
-- means VMs inside the perimeter can access logs outside the perimeter.
-- The wildcard means that unless explicitly specified by
-- \"restricted_services\" list, any service is treated as unrestricted.
-- One of the fields \"restricted_services\", \"unrestricted_services\"
-- must contain a wildcard \"*\", otherwise the Service Perimeter
-- specification is invalid. It also means that both field being empty is
-- invalid as well. \"unrestricted_services\" can be empty if and only if
-- \"restricted_services\" list contains a \"*\" wildcard.
spcUnrestrictedServices :: Lens' ServicePerimeterConfig [Text]
spcUnrestrictedServices
  = lens _spcUnrestrictedServices
      (\ s a -> s{_spcUnrestrictedServices = a})
      . _Default
      . _Coerce

-- | A list of GCP resources that are inside of the service perimeter.
-- Currently only projects are allowed. Format:
-- \`projects\/{project_number}\`
spcResources :: Lens' ServicePerimeterConfig [Text]
spcResources
  = lens _spcResources (\ s a -> s{_spcResources = a})
      . _Default
      . _Coerce

-- | GCP services that are subject to the Service Perimeter restrictions. May
-- contain a list of services or a single wildcard \"*\". For example, if
-- \`storage.googleapis.com\` is specified, access to the storage buckets
-- inside the perimeter must meet the perimeter\'s access restrictions.
-- Wildcard means that unless explicitly specified by
-- \"unrestricted_services\" list, any service is treated as restricted.
-- One of the fields \"restricted_services\", \"unrestricted_services\"
-- must contain a wildcard \"*\", otherwise the Service Perimeter
-- specification is invalid. It also means that both field being empty is
-- invalid as well. \"restricted_services\" can be empty if and only if
-- \"unrestricted_services\" list contains a \"*\" wildcard.
spcRestrictedServices :: Lens' ServicePerimeterConfig [Text]
spcRestrictedServices
  = lens _spcRestrictedServices
      (\ s a -> s{_spcRestrictedServices = a})
      . _Default
      . _Coerce

-- | A list of \`AccessLevel\` resource names that allow resources within the
-- \`ServicePerimeter\` to be accessed from the internet. \`AccessLevels\`
-- listed must be in the same policy as this \`ServicePerimeter\`.
-- Referencing a nonexistent \`AccessLevel\` is a syntax error. If no
-- \`AccessLevel\` names are listed, resources within the perimeter can
-- only be accessed via GCP calls with request origins within the
-- perimeter. Example:
-- \`\"accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\"\`. For Service
-- Perimeter Bridge, must be empty.
spcAccessLevels :: Lens' ServicePerimeterConfig [Text]
spcAccessLevels
  = lens _spcAccessLevels
      (\ s a -> s{_spcAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON ServicePerimeterConfig where
        parseJSON
          = withObject "ServicePerimeterConfig"
              (\ o ->
                 ServicePerimeterConfig' <$>
                   (o .:? "unrestrictedServices" .!= mempty) <*>
                     (o .:? "resources" .!= mempty)
                     <*> (o .:? "restrictedServices" .!= mempty)
                     <*> (o .:? "accessLevels" .!= mempty))

instance ToJSON ServicePerimeterConfig where
        toJSON ServicePerimeterConfig'{..}
          = object
              (catMaybes
                 [("unrestrictedServices" .=) <$>
                    _spcUnrestrictedServices,
                  ("resources" .=) <$> _spcResources,
                  ("restrictedServices" .=) <$> _spcRestrictedServices,
                  ("accessLevels" .=) <$> _spcAccessLevels])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
    Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | \`ServicePerimeter\` describes a set of GCP resources which can freely
-- import and export data amongst themselves, but not export outside of the
-- \`ServicePerimeter\`. If a request with a source within this
-- \`ServicePerimeter\` has a target outside of the \`ServicePerimeter\`,
-- the request will be blocked. Otherwise the request is allowed. There are
-- two types of Service Perimeter - Regular and Bridge. Regular Service
-- Perimeters cannot overlap, a single GCP project can only belong to a
-- single regular Service Perimeter. Service Perimeter Bridges can contain
-- only GCP projects as members, a single GCP project may belong to
-- multiple Service Perimeter Bridges.
--
-- /See:/ 'servicePerimeter' smart constructor.
data ServicePerimeter = ServicePerimeter'
    { _spStatus        :: !(Maybe ServicePerimeterConfig)
    , _spPerimeterType :: !(Maybe ServicePerimeterPerimeterType)
    , _spUpdateTime    :: !(Maybe DateTime')
    , _spName          :: !(Maybe Text)
    , _spTitle         :: !(Maybe Text)
    , _spDescription   :: !(Maybe Text)
    , _spCreateTime    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicePerimeter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spStatus'
--
-- * 'spPerimeterType'
--
-- * 'spUpdateTime'
--
-- * 'spName'
--
-- * 'spTitle'
--
-- * 'spDescription'
--
-- * 'spCreateTime'
servicePerimeter
    :: ServicePerimeter
servicePerimeter =
    ServicePerimeter'
    { _spStatus = Nothing
    , _spPerimeterType = Nothing
    , _spUpdateTime = Nothing
    , _spName = Nothing
    , _spTitle = Nothing
    , _spDescription = Nothing
    , _spCreateTime = Nothing
    }

-- | Current ServicePerimeter configuration. Specifies sets of resources,
-- restricted\/unrestricted services and access levels that determine
-- perimeter content and boundaries.
spStatus :: Lens' ServicePerimeter (Maybe ServicePerimeterConfig)
spStatus = lens _spStatus (\ s a -> s{_spStatus = a})

-- | Perimeter type indicator. A single project is allowed to be a member of
-- single regular perimeter, but multiple service perimeter bridges. A
-- project cannot be a included in a perimeter bridge without being
-- included in regular perimeter. For perimeter bridges,
-- restricted\/unrestricted service lists as well as access lists must be
-- empty.
spPerimeterType :: Lens' ServicePerimeter (Maybe ServicePerimeterPerimeterType)
spPerimeterType
  = lens _spPerimeterType
      (\ s a -> s{_spPerimeterType = a})

-- | Output only. Time the \`ServicePerimeter\` was updated in UTC.
spUpdateTime :: Lens' ServicePerimeter (Maybe UTCTime)
spUpdateTime
  = lens _spUpdateTime (\ s a -> s{_spUpdateTime = a})
      . mapping _DateTime

-- | Required. Resource name for the ServicePerimeter. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/servicePerimeters\/{short_name}\`
spName :: Lens' ServicePerimeter (Maybe Text)
spName = lens _spName (\ s a -> s{_spName = a})

-- | Human readable title. Must be unique within the Policy.
spTitle :: Lens' ServicePerimeter (Maybe Text)
spTitle = lens _spTitle (\ s a -> s{_spTitle = a})

-- | Description of the \`ServicePerimeter\` and its use. Does not affect
-- behavior.
spDescription :: Lens' ServicePerimeter (Maybe Text)
spDescription
  = lens _spDescription
      (\ s a -> s{_spDescription = a})

-- | Output only. Time the \`ServicePerimeter\` was created in UTC.
spCreateTime :: Lens' ServicePerimeter (Maybe UTCTime)
spCreateTime
  = lens _spCreateTime (\ s a -> s{_spCreateTime = a})
      . mapping _DateTime

instance FromJSON ServicePerimeter where
        parseJSON
          = withObject "ServicePerimeter"
              (\ o ->
                 ServicePerimeter' <$>
                   (o .:? "status") <*> (o .:? "perimeterType") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON ServicePerimeter where
        toJSON ServicePerimeter'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _spStatus,
                  ("perimeterType" .=) <$> _spPerimeterType,
                  ("updateTime" .=) <$> _spUpdateTime,
                  ("name" .=) <$> _spName, ("title" .=) <$> _spTitle,
                  ("description" .=) <$> _spDescription,
                  ("createTime" .=) <$> _spCreateTime])

-- | A response to \`ListAccessPoliciesRequest\`.
--
-- /See:/ 'listAccessPoliciesResponse' smart constructor.
data ListAccessPoliciesResponse = ListAccessPoliciesResponse'
    { _laprNextPageToken  :: !(Maybe Text)
    , _laprAccessPolicies :: !(Maybe [AccessPolicy])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAccessPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laprNextPageToken'
--
-- * 'laprAccessPolicies'
listAccessPoliciesResponse
    :: ListAccessPoliciesResponse
listAccessPoliciesResponse =
    ListAccessPoliciesResponse'
    { _laprNextPageToken = Nothing
    , _laprAccessPolicies = Nothing
    }

-- | The pagination token to retrieve the next page of results. If the value
-- is empty, no further results remain.
laprNextPageToken :: Lens' ListAccessPoliciesResponse (Maybe Text)
laprNextPageToken
  = lens _laprNextPageToken
      (\ s a -> s{_laprNextPageToken = a})

-- | List of the AccessPolicy instances.
laprAccessPolicies :: Lens' ListAccessPoliciesResponse [AccessPolicy]
laprAccessPolicies
  = lens _laprAccessPolicies
      (\ s a -> s{_laprAccessPolicies = a})
      . _Default
      . _Coerce

instance FromJSON ListAccessPoliciesResponse where
        parseJSON
          = withObject "ListAccessPoliciesResponse"
              (\ o ->
                 ListAccessPoliciesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accessPolicies" .!= mempty))

instance ToJSON ListAccessPoliciesResponse where
        toJSON ListAccessPoliciesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _laprNextPageToken,
                  ("accessPolicies" .=) <$> _laprAccessPolicies])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | A restriction on the OS type and version of devices making requests.
--
-- /See:/ 'osConstraint' smart constructor.
data OSConstraint = OSConstraint'
    { _ocOSType         :: !(Maybe OSConstraintOSType)
    , _ocMinimumVersion :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OSConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocOSType'
--
-- * 'ocMinimumVersion'
osConstraint
    :: OSConstraint
osConstraint =
    OSConstraint'
    { _ocOSType = Nothing
    , _ocMinimumVersion = Nothing
    }

-- | Required. The allowed OS type.
ocOSType :: Lens' OSConstraint (Maybe OSConstraintOSType)
ocOSType = lens _ocOSType (\ s a -> s{_ocOSType = a})

-- | The minimum allowed OS version. If not set, any version of this OS
-- satisfies the constraint. Format: \`\"major.minor.patch\"\`. Examples:
-- \`\"10.5.301\"\`, \`\"9.2.1\"\`.
ocMinimumVersion :: Lens' OSConstraint (Maybe Text)
ocMinimumVersion
  = lens _ocMinimumVersion
      (\ s a -> s{_ocMinimumVersion = a})

instance FromJSON OSConstraint where
        parseJSON
          = withObject "OSConstraint"
              (\ o ->
                 OSConstraint' <$>
                   (o .:? "osType") <*> (o .:? "minimumVersion"))

instance ToJSON OSConstraint where
        toJSON OSConstraint'{..}
          = object
              (catMaybes
                 [("osType" .=) <$> _ocOSType,
                  ("minimumVersion" .=) <$> _ocMinimumVersion])

-- | \`AccessPolicy\` is a container for \`AccessLevels\` (which define the
-- necessary attributes to use GCP services) and \`ServicePerimeters\`
-- (which define regions of services able to freely pass data within a
-- perimeter). An access policy is globally visible within an organization,
-- and the restrictions it specifies apply to all projects within an
-- organization.
--
-- /See:/ 'accessPolicy' smart constructor.
data AccessPolicy = AccessPolicy'
    { _apParent     :: !(Maybe Text)
    , _apUpdateTime :: !(Maybe DateTime')
    , _apName       :: !(Maybe Text)
    , _apTitle      :: !(Maybe Text)
    , _apCreateTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apParent'
--
-- * 'apUpdateTime'
--
-- * 'apName'
--
-- * 'apTitle'
--
-- * 'apCreateTime'
accessPolicy
    :: AccessPolicy
accessPolicy =
    AccessPolicy'
    { _apParent = Nothing
    , _apUpdateTime = Nothing
    , _apName = Nothing
    , _apTitle = Nothing
    , _apCreateTime = Nothing
    }

-- | Required. The parent of this \`AccessPolicy\` in the Cloud Resource
-- Hierarchy. Currently immutable once created. Format:
-- \`organizations\/{organization_id}\`
apParent :: Lens' AccessPolicy (Maybe Text)
apParent = lens _apParent (\ s a -> s{_apParent = a})

-- | Output only. Time the \`AccessPolicy\` was updated in UTC.
apUpdateTime :: Lens' AccessPolicy (Maybe UTCTime)
apUpdateTime
  = lens _apUpdateTime (\ s a -> s{_apUpdateTime = a})
      . mapping _DateTime

-- | Output only. Resource name of the \`AccessPolicy\`. Format:
-- \`accessPolicies\/{policy_id}\`
apName :: Lens' AccessPolicy (Maybe Text)
apName = lens _apName (\ s a -> s{_apName = a})

-- | Required. Human readable title. Does not affect behavior.
apTitle :: Lens' AccessPolicy (Maybe Text)
apTitle = lens _apTitle (\ s a -> s{_apTitle = a})

-- | Output only. Time the \`AccessPolicy\` was created in UTC.
apCreateTime :: Lens' AccessPolicy (Maybe UTCTime)
apCreateTime
  = lens _apCreateTime (\ s a -> s{_apCreateTime = a})
      . mapping _DateTime

instance FromJSON AccessPolicy where
        parseJSON
          = withObject "AccessPolicy"
              (\ o ->
                 AccessPolicy' <$>
                   (o .:? "parent") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "createTime"))

instance ToJSON AccessPolicy where
        toJSON AccessPolicy'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _apParent,
                  ("updateTime" .=) <$> _apUpdateTime,
                  ("name" .=) <$> _apName, ("title" .=) <$> _apTitle,
                  ("createTime" .=) <$> _apCreateTime])

-- | A response to \`ListServicePerimetersRequest\`.
--
-- /See:/ 'listServicePerimetersResponse' smart constructor.
data ListServicePerimetersResponse = ListServicePerimetersResponse'
    { _lsprNextPageToken     :: !(Maybe Text)
    , _lsprServicePerimeters :: !(Maybe [ServicePerimeter])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListServicePerimetersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsprNextPageToken'
--
-- * 'lsprServicePerimeters'
listServicePerimetersResponse
    :: ListServicePerimetersResponse
listServicePerimetersResponse =
    ListServicePerimetersResponse'
    { _lsprNextPageToken = Nothing
    , _lsprServicePerimeters = Nothing
    }

-- | The pagination token to retrieve the next page of results. If the value
-- is empty, no further results remain.
lsprNextPageToken :: Lens' ListServicePerimetersResponse (Maybe Text)
lsprNextPageToken
  = lens _lsprNextPageToken
      (\ s a -> s{_lsprNextPageToken = a})

-- | List of the Service Perimeter instances.
lsprServicePerimeters :: Lens' ListServicePerimetersResponse [ServicePerimeter]
lsprServicePerimeters
  = lens _lsprServicePerimeters
      (\ s a -> s{_lsprServicePerimeters = a})
      . _Default
      . _Coerce

instance FromJSON ListServicePerimetersResponse where
        parseJSON
          = withObject "ListServicePerimetersResponse"
              (\ o ->
                 ListServicePerimetersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "servicePerimeters" .!= mempty))

instance ToJSON ListServicePerimetersResponse where
        toJSON ListServicePerimetersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsprNextPageToken,
                  ("servicePerimeters" .=) <$> _lsprServicePerimeters])

-- | A response to \`ListAccessLevelsRequest\`.
--
-- /See:/ 'listAccessLevelsResponse' smart constructor.
data ListAccessLevelsResponse = ListAccessLevelsResponse'
    { _lalrNextPageToken :: !(Maybe Text)
    , _lalrAccessLevels  :: !(Maybe [AccessLevel])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAccessLevelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalrNextPageToken'
--
-- * 'lalrAccessLevels'
listAccessLevelsResponse
    :: ListAccessLevelsResponse
listAccessLevelsResponse =
    ListAccessLevelsResponse'
    { _lalrNextPageToken = Nothing
    , _lalrAccessLevels = Nothing
    }

-- | The pagination token to retrieve the next page of results. If the value
-- is empty, no further results remain.
lalrNextPageToken :: Lens' ListAccessLevelsResponse (Maybe Text)
lalrNextPageToken
  = lens _lalrNextPageToken
      (\ s a -> s{_lalrNextPageToken = a})

-- | List of the Access Level instances.
lalrAccessLevels :: Lens' ListAccessLevelsResponse [AccessLevel]
lalrAccessLevels
  = lens _lalrAccessLevels
      (\ s a -> s{_lalrAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON ListAccessLevelsResponse where
        parseJSON
          = withObject "ListAccessLevelsResponse"
              (\ o ->
                 ListAccessLevelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accessLevels" .!= mempty))

instance ToJSON ListAccessLevelsResponse where
        toJSON ListAccessLevelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lalrNextPageToken,
                  ("accessLevels" .=) <$> _lalrAccessLevels])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata = OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
    OperationMetadata'
    { _omAddtional = _Coerce # pOmAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | \`DevicePolicy\` specifies device specific restrictions necessary to
-- acquire a given access level. A \`DevicePolicy\` specifies requirements
-- for requests from devices to be granted access levels, it does not do
-- any enforcement on the device. \`DevicePolicy\` acts as an AND over all
-- specified fields, and each repeated field is an OR over its elements.
-- Any unset fields are ignored. For example, if the proto is { os_type :
-- DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED},
-- then the DevicePolicy will be true for requests originating from
-- encrypted Linux desktops and encrypted Windows desktops.
--
-- /See:/ 'devicePolicy' smart constructor.
data DevicePolicy = DevicePolicy'
    { _dpOSConstraints                 :: !(Maybe [OSConstraint])
    , _dpRequireScreenlock             :: !(Maybe Bool)
    , _dpAllowedEncryptionStatuses     :: !(Maybe [Text])
    , _dpAllowedDeviceManagementLevels :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpOSConstraints'
--
-- * 'dpRequireScreenlock'
--
-- * 'dpAllowedEncryptionStatuses'
--
-- * 'dpAllowedDeviceManagementLevels'
devicePolicy
    :: DevicePolicy
devicePolicy =
    DevicePolicy'
    { _dpOSConstraints = Nothing
    , _dpRequireScreenlock = Nothing
    , _dpAllowedEncryptionStatuses = Nothing
    , _dpAllowedDeviceManagementLevels = Nothing
    }

-- | Allowed OS versions, an empty list allows all types and all versions.
dpOSConstraints :: Lens' DevicePolicy [OSConstraint]
dpOSConstraints
  = lens _dpOSConstraints
      (\ s a -> s{_dpOSConstraints = a})
      . _Default
      . _Coerce

-- | Whether or not screenlock is required for the DevicePolicy to be true.
-- Defaults to \`false\`.
dpRequireScreenlock :: Lens' DevicePolicy (Maybe Bool)
dpRequireScreenlock
  = lens _dpRequireScreenlock
      (\ s a -> s{_dpRequireScreenlock = a})

-- | Allowed encryptions statuses, an empty list allows all statuses.
dpAllowedEncryptionStatuses :: Lens' DevicePolicy [Text]
dpAllowedEncryptionStatuses
  = lens _dpAllowedEncryptionStatuses
      (\ s a -> s{_dpAllowedEncryptionStatuses = a})
      . _Default
      . _Coerce

-- | Allowed device management levels, an empty list allows all management
-- levels.
dpAllowedDeviceManagementLevels :: Lens' DevicePolicy [Text]
dpAllowedDeviceManagementLevels
  = lens _dpAllowedDeviceManagementLevels
      (\ s a -> s{_dpAllowedDeviceManagementLevels = a})
      . _Default
      . _Coerce

instance FromJSON DevicePolicy where
        parseJSON
          = withObject "DevicePolicy"
              (\ o ->
                 DevicePolicy' <$>
                   (o .:? "osConstraints" .!= mempty) <*>
                     (o .:? "requireScreenlock")
                     <*> (o .:? "allowedEncryptionStatuses" .!= mempty)
                     <*>
                     (o .:? "allowedDeviceManagementLevels" .!= mempty))

instance ToJSON DevicePolicy where
        toJSON DevicePolicy'{..}
          = object
              (catMaybes
                 [("osConstraints" .=) <$> _dpOSConstraints,
                  ("requireScreenlock" .=) <$> _dpRequireScreenlock,
                  ("allowedEncryptionStatuses" .=) <$>
                    _dpAllowedEncryptionStatuses,
                  ("allowedDeviceManagementLevels" .=) <$>
                    _dpAllowedDeviceManagementLevels])

-- | A condition necessary for an \`AccessLevel\` to be granted. The
-- Condition is an AND over its fields. So a Condition is true if: 1) the
-- request IP is from one of the listed subnetworks AND 2) the originating
-- device complies with the listed device policy AND 3) all listed access
-- levels are granted AND 4) the request was sent at a time allowed by the
-- DateTimeRestriction.
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition'
    { _cMembers              :: !(Maybe [Text])
    , _cNegate               :: !(Maybe Bool)
    , _cIPSubnetworks        :: !(Maybe [Text])
    , _cDevicePolicy         :: !(Maybe DevicePolicy)
    , _cRequiredAccessLevels :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cMembers'
--
-- * 'cNegate'
--
-- * 'cIPSubnetworks'
--
-- * 'cDevicePolicy'
--
-- * 'cRequiredAccessLevels'
condition
    :: Condition
condition =
    Condition'
    { _cMembers = Nothing
    , _cNegate = Nothing
    , _cIPSubnetworks = Nothing
    , _cDevicePolicy = Nothing
    , _cRequiredAccessLevels = Nothing
    }

-- | The signed-in user originating the request must be a part of one of the
-- provided members. Syntax: \`user:{emailid}\` \`group:{emailid}\`
-- \`serviceAccount:{emailid}\` If not specified, a request may come from
-- any user (logged in\/not logged in, not present in any groups, etc.).
cMembers :: Lens' Condition [Text]
cMembers
  = lens _cMembers (\ s a -> s{_cMembers = a}) .
      _Default
      . _Coerce

-- | Whether to negate the Condition. If true, the Condition becomes a NAND
-- over its non-empty fields, each field must be false for the Condition
-- overall to be satisfied. Defaults to false.
cNegate :: Lens' Condition (Maybe Bool)
cNegate = lens _cNegate (\ s a -> s{_cNegate = a})

-- | CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that
-- for a CIDR IP address block, the specified IP address portion must be
-- properly truncated (i.e. all the host bits must be zero) or the input is
-- considered malformed. For example, \"192.0.2.0\/24\" is accepted but
-- \"192.0.2.1\/24\" is not. Similarly, for IPv6, \"2001:db8::\/32\" is
-- accepted whereas \"2001:db8::1\/32\" is not. The originating IP of a
-- request must be in one of the listed subnets in order for this Condition
-- to be true. If empty, all IP addresses are allowed.
cIPSubnetworks :: Lens' Condition [Text]
cIPSubnetworks
  = lens _cIPSubnetworks
      (\ s a -> s{_cIPSubnetworks = a})
      . _Default
      . _Coerce

-- | Device specific restrictions, all restrictions must hold for the
-- Condition to be true. If not specified, all devices are allowed.
cDevicePolicy :: Lens' Condition (Maybe DevicePolicy)
cDevicePolicy
  = lens _cDevicePolicy
      (\ s a -> s{_cDevicePolicy = a})

-- | A list of other access levels defined in the same \`Policy\`, referenced
-- by resource name. Referencing an \`AccessLevel\` which does not exist is
-- an error. All access levels listed must be granted for the Condition to
-- be true. Example:
-- \"\`accessPolicies\/MY_POLICY\/accessLevels\/LEVEL_NAME\"\`
cRequiredAccessLevels :: Lens' Condition [Text]
cRequiredAccessLevels
  = lens _cRequiredAccessLevels
      (\ s a -> s{_cRequiredAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ o ->
                 Condition' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "negate") <*>
                     (o .:? "ipSubnetworks" .!= mempty)
                     <*> (o .:? "devicePolicy")
                     <*> (o .:? "requiredAccessLevels" .!= mempty))

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _cMembers,
                  ("negate" .=) <$> _cNegate,
                  ("ipSubnetworks" .=) <$> _cIPSubnetworks,
                  ("devicePolicy" .=) <$> _cDevicePolicy,
                  ("requiredAccessLevels" .=) <$>
                    _cRequiredAccessLevels])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse = OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse'
    { _orAddtional = _Coerce # pOrAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional
