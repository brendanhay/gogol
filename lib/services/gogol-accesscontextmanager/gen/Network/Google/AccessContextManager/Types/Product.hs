{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessContextManager.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AccessContextManager.Types.Product where

import Network.Google.AccessContextManager.Types.Sum
import Network.Google.Prelude

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


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
data BasicLevel =
  BasicLevel'
    { _blConditions :: !(Maybe [Condition])
    , _blCombiningFunction :: !(Maybe BasicLevelCombiningFunction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  BasicLevel' {_blConditions = Nothing, _blCombiningFunction = Nothing}


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

-- | Policy for ingress into ServicePerimeter. IngressPolicies match requests
-- based on \`ingress_from\` and \`ingress_to\` stanzas. For an ingress
-- policy to match, both the \`ingress_from\` and \`ingress_to\` stanzas
-- must be matched. If an IngressPolicy matches a request, the request is
-- allowed through the perimeter boundary from outside the perimeter. For
-- example, access from the internet can be allowed either based on an
-- AccessLevel or, for traffic hosted on Google Cloud, the project of the
-- source network. For access from private networks, using the project of
-- the hosting network is required. Individual ingress policies can be
-- limited by restricting which services and\/or actions they match using
-- the \`ingress_to\` field.
--
-- /See:/ 'ingressPolicy' smart constructor.
data IngressPolicy =
  IngressPolicy'
    { _ipIngressFrom :: !(Maybe IngressFrom)
    , _ipIngressTo :: !(Maybe IngressTo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IngressPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipIngressFrom'
--
-- * 'ipIngressTo'
ingressPolicy
    :: IngressPolicy
ingressPolicy =
  IngressPolicy' {_ipIngressFrom = Nothing, _ipIngressTo = Nothing}


-- | Defines the conditions on the source of a request causing this
-- IngressPolicy to apply.
ipIngressFrom :: Lens' IngressPolicy (Maybe IngressFrom)
ipIngressFrom
  = lens _ipIngressFrom
      (\ s a -> s{_ipIngressFrom = a})

-- | Defines the conditions on the ApiOperation and request destination that
-- cause this IngressPolicy to apply.
ipIngressTo :: Lens' IngressPolicy (Maybe IngressTo)
ipIngressTo
  = lens _ipIngressTo (\ s a -> s{_ipIngressTo = a})

instance FromJSON IngressPolicy where
        parseJSON
          = withObject "IngressPolicy"
              (\ o ->
                 IngressPolicy' <$>
                   (o .:? "ingressFrom") <*> (o .:? "ingressTo"))

instance ToJSON IngressPolicy where
        toJSON IngressPolicy'{..}
          = object
              (catMaybes
                 [("ingressFrom" .=) <$> _ipIngressFrom,
                  ("ingressTo" .=) <$> _ipIngressTo])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | An \`AccessLevel\` is a label that can be applied to requests to Google
-- Cloud services, along with a list of requirements necessary for the
-- label to be applied.
--
-- /See:/ 'accessLevel' smart constructor.
data AccessLevel =
  AccessLevel'
    { _alBasic :: !(Maybe BasicLevel)
    , _alCustom :: !(Maybe CustomLevel)
    , _alName :: !(Maybe Text)
    , _alTitle :: !(Maybe Text)
    , _alDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alBasic'
--
-- * 'alCustom'
--
-- * 'alName'
--
-- * 'alTitle'
--
-- * 'alDescription'
accessLevel
    :: AccessLevel
accessLevel =
  AccessLevel'
    { _alBasic = Nothing
    , _alCustom = Nothing
    , _alName = Nothing
    , _alTitle = Nothing
    , _alDescription = Nothing
    }


-- | A \`BasicLevel\` composed of \`Conditions\`.
alBasic :: Lens' AccessLevel (Maybe BasicLevel)
alBasic = lens _alBasic (\ s a -> s{_alBasic = a})

-- | A \`CustomLevel\` written in the Common Expression Language.
alCustom :: Lens' AccessLevel (Maybe CustomLevel)
alCustom = lens _alCustom (\ s a -> s{_alCustom = a})

-- | Required. Resource name for the Access Level. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/accessLevels\/{short_name}\`. The maximum
-- length of the \`short_name\` component is 50 characters.
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

instance FromJSON AccessLevel where
        parseJSON
          = withObject "AccessLevel"
              (\ o ->
                 AccessLevel' <$>
                   (o .:? "basic") <*> (o .:? "custom") <*>
                     (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON AccessLevel where
        toJSON AccessLevel'{..}
          = object
              (catMaybes
                 [("basic" .=) <$> _alBasic,
                  ("custom" .=) <$> _alCustom, ("name" .=) <$> _alName,
                  ("title" .=) <$> _alTitle,
                  ("description" .=) <$> _alDescription])

-- | The source that IngressPolicy authorizes access from.
--
-- /See:/ 'ingressSource' smart constructor.
data IngressSource =
  IngressSource'
    { _isAccessLevel :: !(Maybe Text)
    , _isResource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IngressSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isAccessLevel'
--
-- * 'isResource'
ingressSource
    :: IngressSource
ingressSource = IngressSource' {_isAccessLevel = Nothing, _isResource = Nothing}


-- | An AccessLevel resource name that allow resources within the
-- ServicePerimeters to be accessed from the internet. AccessLevels listed
-- must be in the same policy as this ServicePerimeter. Referencing a
-- nonexistent AccessLevel will cause an error. If no AccessLevel names are
-- listed, resources within the perimeter can only be accessed via Google
-- Cloud calls with request origins within the perimeter. Example:
-- \`accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\`. If a single \`*\`
-- is specified for \`access_level\`, then all IngressSources will be
-- allowed.
isAccessLevel :: Lens' IngressSource (Maybe Text)
isAccessLevel
  = lens _isAccessLevel
      (\ s a -> s{_isAccessLevel = a})

-- | A Google Cloud resource that is allowed to ingress the perimeter.
-- Requests from these resources will be allowed to access perimeter data.
-- Currently only projects are allowed. Format:
-- \`projects\/{project_number}\` The project may be in any Google Cloud
-- organization, not just the organization that the perimeter is defined
-- in. \`*\` is not allowed, the case of allowing all Google Cloud
-- resources only is not supported.
isResource :: Lens' IngressSource (Maybe Text)
isResource
  = lens _isResource (\ s a -> s{_isResource = a})

instance FromJSON IngressSource where
        parseJSON
          = withObject "IngressSource"
              (\ o ->
                 IngressSource' <$>
                   (o .:? "accessLevel") <*> (o .:? "resource"))

instance ToJSON IngressSource where
        toJSON IngressSource'{..}
          = object
              (catMaybes
                 [("accessLevel" .=) <$> _isAccessLevel,
                  ("resource" .=) <$> _isResource])

-- | \`ServicePerimeterConfig\` specifies a set of Google Cloud resources
-- that describe specific Service Perimeter configuration.
--
-- /See:/ 'servicePerimeterConfig' smart constructor.
data ServicePerimeterConfig =
  ServicePerimeterConfig'
    { _spcResources :: !(Maybe [Text])
    , _spcVPCAccessibleServices :: !(Maybe VPCAccessibleServices)
    , _spcRestrictedServices :: !(Maybe [Text])
    , _spcEgressPolicies :: !(Maybe [EgressPolicy])
    , _spcAccessLevels :: !(Maybe [Text])
    , _spcIngressPolicies :: !(Maybe [IngressPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicePerimeterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spcResources'
--
-- * 'spcVPCAccessibleServices'
--
-- * 'spcRestrictedServices'
--
-- * 'spcEgressPolicies'
--
-- * 'spcAccessLevels'
--
-- * 'spcIngressPolicies'
servicePerimeterConfig
    :: ServicePerimeterConfig
servicePerimeterConfig =
  ServicePerimeterConfig'
    { _spcResources = Nothing
    , _spcVPCAccessibleServices = Nothing
    , _spcRestrictedServices = Nothing
    , _spcEgressPolicies = Nothing
    , _spcAccessLevels = Nothing
    , _spcIngressPolicies = Nothing
    }


-- | A list of Google Cloud resources that are inside of the service
-- perimeter. Currently only projects are allowed. Format:
-- \`projects\/{project_number}\`
spcResources :: Lens' ServicePerimeterConfig [Text]
spcResources
  = lens _spcResources (\ s a -> s{_spcResources = a})
      . _Default
      . _Coerce

-- | Configuration for APIs allowed within Perimeter.
spcVPCAccessibleServices :: Lens' ServicePerimeterConfig (Maybe VPCAccessibleServices)
spcVPCAccessibleServices
  = lens _spcVPCAccessibleServices
      (\ s a -> s{_spcVPCAccessibleServices = a})

-- | Google Cloud services that are subject to the Service Perimeter
-- restrictions. For example, if \`storage.googleapis.com\` is specified,
-- access to the storage buckets inside the perimeter must meet the
-- perimeter\'s access restrictions.
spcRestrictedServices :: Lens' ServicePerimeterConfig [Text]
spcRestrictedServices
  = lens _spcRestrictedServices
      (\ s a -> s{_spcRestrictedServices = a})
      . _Default
      . _Coerce

-- | List of EgressPolicies to apply to the perimeter. A perimeter may have
-- multiple EgressPolicies, each of which is evaluated separately. Access
-- is granted if any EgressPolicy grants it. Must be empty for a perimeter
-- bridge.
spcEgressPolicies :: Lens' ServicePerimeterConfig [EgressPolicy]
spcEgressPolicies
  = lens _spcEgressPolicies
      (\ s a -> s{_spcEgressPolicies = a})
      . _Default
      . _Coerce

-- | A list of \`AccessLevel\` resource names that allow resources within the
-- \`ServicePerimeter\` to be accessed from the internet. \`AccessLevels\`
-- listed must be in the same policy as this \`ServicePerimeter\`.
-- Referencing a nonexistent \`AccessLevel\` is a syntax error. If no
-- \`AccessLevel\` names are listed, resources within the perimeter can
-- only be accessed via Google Cloud calls with request origins within the
-- perimeter. Example:
-- \`\"accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\"\`. For Service
-- Perimeter Bridge, must be empty.
spcAccessLevels :: Lens' ServicePerimeterConfig [Text]
spcAccessLevels
  = lens _spcAccessLevels
      (\ s a -> s{_spcAccessLevels = a})
      . _Default
      . _Coerce

-- | List of IngressPolicies to apply to the perimeter. A perimeter may have
-- multiple IngressPolicies, each of which is evaluated separately. Access
-- is granted if any Ingress Policy grants it. Must be empty for a
-- perimeter bridge.
spcIngressPolicies :: Lens' ServicePerimeterConfig [IngressPolicy]
spcIngressPolicies
  = lens _spcIngressPolicies
      (\ s a -> s{_spcIngressPolicies = a})
      . _Default
      . _Coerce

instance FromJSON ServicePerimeterConfig where
        parseJSON
          = withObject "ServicePerimeterConfig"
              (\ o ->
                 ServicePerimeterConfig' <$>
                   (o .:? "resources" .!= mempty) <*>
                     (o .:? "vpcAccessibleServices")
                     <*> (o .:? "restrictedServices" .!= mempty)
                     <*> (o .:? "egressPolicies" .!= mempty)
                     <*> (o .:? "accessLevels" .!= mempty)
                     <*> (o .:? "ingressPolicies" .!= mempty))

instance ToJSON ServicePerimeterConfig where
        toJSON ServicePerimeterConfig'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _spcResources,
                  ("vpcAccessibleServices" .=) <$>
                    _spcVPCAccessibleServices,
                  ("restrictedServices" .=) <$> _spcRestrictedServices,
                  ("egressPolicies" .=) <$> _spcEgressPolicies,
                  ("accessLevels" .=) <$> _spcAccessLevels,
                  ("ingressPolicies" .=) <$> _spcIngressPolicies])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
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

-- | Policy for egress from perimeter. EgressPolicies match requests based on
-- \`egress_from\` and \`egress_to\` stanzas. For an EgressPolicy to match,
-- both \`egress_from\` and \`egress_to\` stanzas must be matched. If an
-- EgressPolicy matches a request, the request is allowed to span the
-- ServicePerimeter boundary. For example, an EgressPolicy can be used to
-- allow VMs on networks within the ServicePerimeter to access a defined
-- set of projects outside the perimeter in certain contexts (e.g. to read
-- data from a Cloud Storage bucket or query against a BigQuery dataset).
-- EgressPolicies are concerned with the *resources* that a request relates
-- as well as the API services and API actions being used. They do not
-- related to the direction of data movement. More detailed documentation
-- for this concept can be found in the descriptions of EgressFrom and
-- EgressTo.
--
-- /See:/ 'egressPolicy' smart constructor.
data EgressPolicy =
  EgressPolicy'
    { _epEgressFrom :: !(Maybe EgressFrom)
    , _epEgressTo :: !(Maybe EgressTo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EgressPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epEgressFrom'
--
-- * 'epEgressTo'
egressPolicy
    :: EgressPolicy
egressPolicy = EgressPolicy' {_epEgressFrom = Nothing, _epEgressTo = Nothing}


-- | Defines conditions on the source of a request causing this EgressPolicy
-- to apply.
epEgressFrom :: Lens' EgressPolicy (Maybe EgressFrom)
epEgressFrom
  = lens _epEgressFrom (\ s a -> s{_epEgressFrom = a})

-- | Defines the conditions on the ApiOperation and destination resources
-- that cause this EgressPolicy to apply.
epEgressTo :: Lens' EgressPolicy (Maybe EgressTo)
epEgressTo
  = lens _epEgressTo (\ s a -> s{_epEgressTo = a})

instance FromJSON EgressPolicy where
        parseJSON
          = withObject "EgressPolicy"
              (\ o ->
                 EgressPolicy' <$>
                   (o .:? "egressFrom") <*> (o .:? "egressTo"))

instance ToJSON EgressPolicy where
        toJSON EgressPolicy'{..}
          = object
              (catMaybes
                 [("egressFrom" .=) <$> _epEgressFrom,
                  ("egressTo" .=) <$> _epEgressTo])

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

-- | Restricts access to Cloud Console and Google Cloud APIs for a set of
-- users using Context-Aware Access.
--
-- /See:/ 'gcpUserAccessBinding' smart constructor.
data GcpUserAccessBinding =
  GcpUserAccessBinding'
    { _guabGroupKey :: !(Maybe Text)
    , _guabName :: !(Maybe Text)
    , _guabAccessLevels :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcpUserAccessBinding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guabGroupKey'
--
-- * 'guabName'
--
-- * 'guabAccessLevels'
gcpUserAccessBinding
    :: GcpUserAccessBinding
gcpUserAccessBinding =
  GcpUserAccessBinding'
    {_guabGroupKey = Nothing, _guabName = Nothing, _guabAccessLevels = Nothing}


-- | Required. Immutable. Google Group id whose members are subject to this
-- binding\'s restrictions. See \"id\" in the [G Suite Directory API\'s
-- Groups resource]
-- (https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/reference\/groups#resource).
-- If a group\'s email address\/alias is changed, this resource will
-- continue to point at the changed group. This field does not accept group
-- email addresses or aliases. Example: \"01d520gv4vjcrht\"
guabGroupKey :: Lens' GcpUserAccessBinding (Maybe Text)
guabGroupKey
  = lens _guabGroupKey (\ s a -> s{_guabGroupKey = a})

-- | Immutable. Assigned by the server during creation. The last segment has
-- an arbitrary length and has only URI unreserved characters (as defined
-- by [RFC 3986 Section
-- 2.3](https:\/\/tools.ietf.org\/html\/rfc3986#section-2.3)). Should not
-- be specified by the client during creation. Example:
-- \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\"
guabName :: Lens' GcpUserAccessBinding (Maybe Text)
guabName = lens _guabName (\ s a -> s{_guabName = a})

-- | Required. Access level that a user must have to be granted access. Only
-- one access level is supported, not multiple. This repeated field must
-- have exactly one element. Example:
-- \"accessPolicies\/9522\/accessLevels\/device_trusted\"
guabAccessLevels :: Lens' GcpUserAccessBinding [Text]
guabAccessLevels
  = lens _guabAccessLevels
      (\ s a -> s{_guabAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON GcpUserAccessBinding where
        parseJSON
          = withObject "GcpUserAccessBinding"
              (\ o ->
                 GcpUserAccessBinding' <$>
                   (o .:? "groupKey") <*> (o .:? "name") <*>
                     (o .:? "accessLevels" .!= mempty))

instance ToJSON GcpUserAccessBinding where
        toJSON GcpUserAccessBinding'{..}
          = object
              (catMaybes
                 [("groupKey" .=) <$> _guabGroupKey,
                  ("name" .=) <$> _guabName,
                  ("accessLevels" .=) <$> _guabAccessLevels])

-- | \`ServicePerimeter\` describes a set of Google Cloud resources which can
-- freely import and export data amongst themselves, but not export outside
-- of the \`ServicePerimeter\`. If a request with a source within this
-- \`ServicePerimeter\` has a target outside of the \`ServicePerimeter\`,
-- the request will be blocked. Otherwise the request is allowed. There are
-- two types of Service Perimeter - Regular and Bridge. Regular Service
-- Perimeters cannot overlap, a single Google Cloud project can only belong
-- to a single regular Service Perimeter. Service Perimeter Bridges can
-- contain only Google Cloud projects as members, a single Google Cloud
-- project may belong to multiple Service Perimeter Bridges.
--
-- /See:/ 'servicePerimeter' smart constructor.
data ServicePerimeter =
  ServicePerimeter'
    { _spStatus :: !(Maybe ServicePerimeterConfig)
    , _spPerimeterType :: !(Maybe ServicePerimeterPerimeterType)
    , _spName :: !(Maybe Text)
    , _spSpec :: !(Maybe ServicePerimeterConfig)
    , _spTitle :: !(Maybe Text)
    , _spUseExplicitDryRunSpec :: !(Maybe Bool)
    , _spDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicePerimeter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spStatus'
--
-- * 'spPerimeterType'
--
-- * 'spName'
--
-- * 'spSpec'
--
-- * 'spTitle'
--
-- * 'spUseExplicitDryRunSpec'
--
-- * 'spDescription'
servicePerimeter
    :: ServicePerimeter
servicePerimeter =
  ServicePerimeter'
    { _spStatus = Nothing
    , _spPerimeterType = Nothing
    , _spName = Nothing
    , _spSpec = Nothing
    , _spTitle = Nothing
    , _spUseExplicitDryRunSpec = Nothing
    , _spDescription = Nothing
    }


-- | Current ServicePerimeter configuration. Specifies sets of resources,
-- restricted services and access levels that determine perimeter content
-- and boundaries.
spStatus :: Lens' ServicePerimeter (Maybe ServicePerimeterConfig)
spStatus = lens _spStatus (\ s a -> s{_spStatus = a})

-- | Perimeter type indicator. A single project is allowed to be a member of
-- single regular perimeter, but multiple service perimeter bridges. A
-- project cannot be a included in a perimeter bridge without being
-- included in regular perimeter. For perimeter bridges, the restricted
-- service list as well as access level lists must be empty.
spPerimeterType :: Lens' ServicePerimeter (Maybe ServicePerimeterPerimeterType)
spPerimeterType
  = lens _spPerimeterType
      (\ s a -> s{_spPerimeterType = a})

-- | Required. Resource name for the ServicePerimeter. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/servicePerimeters\/{short_name}\`
spName :: Lens' ServicePerimeter (Maybe Text)
spName = lens _spName (\ s a -> s{_spName = a})

-- | Proposed (or dry run) ServicePerimeter configuration. This configuration
-- allows to specify and test ServicePerimeter configuration without
-- enforcing actual access restrictions. Only allowed to be set when the
-- \"use_explicit_dry_run_spec\" flag is set.
spSpec :: Lens' ServicePerimeter (Maybe ServicePerimeterConfig)
spSpec = lens _spSpec (\ s a -> s{_spSpec = a})

-- | Human readable title. Must be unique within the Policy.
spTitle :: Lens' ServicePerimeter (Maybe Text)
spTitle = lens _spTitle (\ s a -> s{_spTitle = a})

-- | Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly
-- exists for all Service Perimeters, and that spec is identical to the
-- status for those Service Perimeters. When this flag is set, it inhibits
-- the generation of the implicit spec, thereby allowing the user to
-- explicitly provide a configuration (\"spec\") to use in a dry-run
-- version of the Service Perimeter. This allows the user to test changes
-- to the enforced config (\"status\") without actually enforcing them.
-- This testing is done through analyzing the differences between currently
-- enforced and suggested restrictions. use_explicit_dry_run_spec must bet
-- set to True if any of the fields in the spec are set to non-default
-- values.
spUseExplicitDryRunSpec :: Lens' ServicePerimeter (Maybe Bool)
spUseExplicitDryRunSpec
  = lens _spUseExplicitDryRunSpec
      (\ s a -> s{_spUseExplicitDryRunSpec = a})

-- | Description of the \`ServicePerimeter\` and its use. Does not affect
-- behavior.
spDescription :: Lens' ServicePerimeter (Maybe Text)
spDescription
  = lens _spDescription
      (\ s a -> s{_spDescription = a})

instance FromJSON ServicePerimeter where
        parseJSON
          = withObject "ServicePerimeter"
              (\ o ->
                 ServicePerimeter' <$>
                   (o .:? "status") <*> (o .:? "perimeterType") <*>
                     (o .:? "name")
                     <*> (o .:? "spec")
                     <*> (o .:? "title")
                     <*> (o .:? "useExplicitDryRunSpec")
                     <*> (o .:? "description"))

instance ToJSON ServicePerimeter where
        toJSON ServicePerimeter'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _spStatus,
                  ("perimeterType" .=) <$> _spPerimeterType,
                  ("name" .=) <$> _spName, ("spec" .=) <$> _spSpec,
                  ("title" .=) <$> _spTitle,
                  ("useExplicitDryRunSpec" .=) <$>
                    _spUseExplicitDryRunSpec,
                  ("description" .=) <$> _spDescription])

-- | A request to commit dry-run specs in all Service Perimeters belonging to
-- an Access Policy.
--
-- /See:/ 'commitServicePerimetersRequest' smart constructor.
newtype CommitServicePerimetersRequest =
  CommitServicePerimetersRequest'
    { _csprEtag :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommitServicePerimetersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csprEtag'
commitServicePerimetersRequest
    :: CommitServicePerimetersRequest
commitServicePerimetersRequest =
  CommitServicePerimetersRequest' {_csprEtag = Nothing}


-- | Optional. The etag for the version of the Access Policy that this commit
-- operation is to be performed on. If, at the time of commit, the etag for
-- the Access Policy stored in Access Context Manager is different from the
-- specified etag, then the commit operation will not be performed and the
-- call will fail. This field is not required. If etag is not provided, the
-- operation will be performed as if a valid etag is provided.
csprEtag :: Lens' CommitServicePerimetersRequest (Maybe Text)
csprEtag = lens _csprEtag (\ s a -> s{_csprEtag = a})

instance FromJSON CommitServicePerimetersRequest
         where
        parseJSON
          = withObject "CommitServicePerimetersRequest"
              (\ o ->
                 CommitServicePerimetersRequest' <$> (o .:? "etag"))

instance ToJSON CommitServicePerimetersRequest where
        toJSON CommitServicePerimetersRequest'{..}
          = object (catMaybes [("etag" .=) <$> _csprEtag])

-- | A response to \`ListAccessPoliciesRequest\`.
--
-- /See:/ 'listAccessPoliciesResponse' smart constructor.
data ListAccessPoliciesResponse =
  ListAccessPoliciesResponse'
    { _laprNextPageToken :: !(Maybe Text)
    , _laprAccessPolicies :: !(Maybe [AccessPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_laprNextPageToken = Nothing, _laprAccessPolicies = Nothing}


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

-- | Defines the conditions under which an EgressPolicy matches a request.
-- Conditions based on information about the source of the request. Note
-- that if the destination of the request is also protected by a
-- ServicePerimeter, then that ServicePerimeter must have an IngressPolicy
-- which allows access in order for this request to succeed.
--
-- /See:/ 'egressFrom' smart constructor.
data EgressFrom =
  EgressFrom'
    { _efIdentityType :: !(Maybe EgressFromIdentityType)
    , _efIdentities :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EgressFrom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efIdentityType'
--
-- * 'efIdentities'
egressFrom
    :: EgressFrom
egressFrom = EgressFrom' {_efIdentityType = Nothing, _efIdentities = Nothing}


-- | Specifies the type of identities that are allowed access to outside the
-- perimeter. If left unspecified, then members of \`identities\` field
-- will be allowed access.
efIdentityType :: Lens' EgressFrom (Maybe EgressFromIdentityType)
efIdentityType
  = lens _efIdentityType
      (\ s a -> s{_efIdentityType = a})

-- | A list of identities that are allowed access through this
-- [EgressPolicy]. Should be in the format of email address. The email
-- address should represent individual user or service account only.
efIdentities :: Lens' EgressFrom [Text]
efIdentities
  = lens _efIdentities (\ s a -> s{_efIdentities = a})
      . _Default
      . _Coerce

instance FromJSON EgressFrom where
        parseJSON
          = withObject "EgressFrom"
              (\ o ->
                 EgressFrom' <$>
                   (o .:? "identityType") <*>
                     (o .:? "identities" .!= mempty))

instance ToJSON EgressFrom where
        toJSON EgressFrom'{..}
          = object
              (catMaybes
                 [("identityType" .=) <$> _efIdentityType,
                  ("identities" .=) <$> _efIdentities])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


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

-- | A request to replace all existing Service Perimeters in an Access Policy
-- with the Service Perimeters provided. This is done atomically.
--
-- /See:/ 'replaceServicePerimetersRequest' smart constructor.
data ReplaceServicePerimetersRequest =
  ReplaceServicePerimetersRequest'
    { _rsprEtag :: !(Maybe Text)
    , _rsprServicePerimeters :: !(Maybe [ServicePerimeter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceServicePerimetersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsprEtag'
--
-- * 'rsprServicePerimeters'
replaceServicePerimetersRequest
    :: ReplaceServicePerimetersRequest
replaceServicePerimetersRequest =
  ReplaceServicePerimetersRequest'
    {_rsprEtag = Nothing, _rsprServicePerimeters = Nothing}


-- | Optional. The etag for the version of the Access Policy that this
-- replace operation is to be performed on. If, at the time of replace, the
-- etag for the Access Policy stored in Access Context Manager is different
-- from the specified etag, then the replace operation will not be
-- performed and the call will fail. This field is not required. If etag is
-- not provided, the operation will be performed as if a valid etag is
-- provided.
rsprEtag :: Lens' ReplaceServicePerimetersRequest (Maybe Text)
rsprEtag = lens _rsprEtag (\ s a -> s{_rsprEtag = a})

-- | Required. The desired Service Perimeters that should replace all
-- existing Service Perimeters in the Access Policy.
rsprServicePerimeters :: Lens' ReplaceServicePerimetersRequest [ServicePerimeter]
rsprServicePerimeters
  = lens _rsprServicePerimeters
      (\ s a -> s{_rsprServicePerimeters = a})
      . _Default
      . _Coerce

instance FromJSON ReplaceServicePerimetersRequest
         where
        parseJSON
          = withObject "ReplaceServicePerimetersRequest"
              (\ o ->
                 ReplaceServicePerimetersRequest' <$>
                   (o .:? "etag") <*>
                     (o .:? "servicePerimeters" .!= mempty))

instance ToJSON ReplaceServicePerimetersRequest where
        toJSON ReplaceServicePerimetersRequest'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rsprEtag,
                  ("servicePerimeters" .=) <$> _rsprServicePerimeters])

-- | A response to ReplaceAccessLevelsRequest. This will be put inside of
-- Operation.response field.
--
-- /See:/ 'replaceAccessLevelsResponse' smart constructor.
newtype ReplaceAccessLevelsResponse =
  ReplaceAccessLevelsResponse'
    { _ralrAccessLevels :: Maybe [AccessLevel]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceAccessLevelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ralrAccessLevels'
replaceAccessLevelsResponse
    :: ReplaceAccessLevelsResponse
replaceAccessLevelsResponse =
  ReplaceAccessLevelsResponse' {_ralrAccessLevels = Nothing}


-- | List of the Access Level instances.
ralrAccessLevels :: Lens' ReplaceAccessLevelsResponse [AccessLevel]
ralrAccessLevels
  = lens _ralrAccessLevels
      (\ s a -> s{_ralrAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON ReplaceAccessLevelsResponse where
        parseJSON
          = withObject "ReplaceAccessLevelsResponse"
              (\ o ->
                 ReplaceAccessLevelsResponse' <$>
                   (o .:? "accessLevels" .!= mempty))

instance ToJSON ReplaceAccessLevelsResponse where
        toJSON ReplaceAccessLevelsResponse'{..}
          = object
              (catMaybes
                 [("accessLevels" .=) <$> _ralrAccessLevels])

-- | Defines the conditions under which an EgressPolicy matches a request.
-- Conditions are based on information about the ApiOperation intended to
-- be performed on the \`resources\` specified. Note that if the
-- destination of the request is also protected by a ServicePerimeter, then
-- that ServicePerimeter must have an IngressPolicy which allows access in
-- order for this request to succeed. The request must match \`operations\`
-- AND \`resources\` fields in order to be allowed egress out of the
-- perimeter.
--
-- /See:/ 'egressTo' smart constructor.
data EgressTo =
  EgressTo'
    { _etResources :: !(Maybe [Text])
    , _etOperations :: !(Maybe [APIOperation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EgressTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etResources'
--
-- * 'etOperations'
egressTo
    :: EgressTo
egressTo = EgressTo' {_etResources = Nothing, _etOperations = Nothing}


-- | A list of resources, currently only projects in the form \`projects\/\`,
-- that are allowed to be accessed by sources defined in the corresponding
-- EgressFrom. A request matches if it contains a resource in this list. If
-- \`*\` is specified for \`resources\`, then this EgressTo rule will
-- authorize access to all resources outside the perimeter.
etResources :: Lens' EgressTo [Text]
etResources
  = lens _etResources (\ s a -> s{_etResources = a}) .
      _Default
      . _Coerce

-- | A list of ApiOperations allowed to be performed by the sources specified
-- in the corresponding EgressFrom. A request matches if it uses an
-- operation\/service in this list.
etOperations :: Lens' EgressTo [APIOperation]
etOperations
  = lens _etOperations (\ s a -> s{_etOperations = a})
      . _Default
      . _Coerce

instance FromJSON EgressTo where
        parseJSON
          = withObject "EgressTo"
              (\ o ->
                 EgressTo' <$>
                   (o .:? "resources" .!= mempty) <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON EgressTo where
        toJSON EgressTo'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _etResources,
                  ("operations" .=) <$> _etOperations])

-- | A restriction on the OS type and version of devices making requests.
--
-- /See:/ 'osConstraint' smart constructor.
data OSConstraint =
  OSConstraint'
    { _ocOSType :: !(Maybe OSConstraintOSType)
    , _ocMinimumVersion :: !(Maybe Text)
    , _ocRequireVerifiedChromeOS :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OSConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocOSType'
--
-- * 'ocMinimumVersion'
--
-- * 'ocRequireVerifiedChromeOS'
osConstraint
    :: OSConstraint
osConstraint =
  OSConstraint'
    { _ocOSType = Nothing
    , _ocMinimumVersion = Nothing
    , _ocRequireVerifiedChromeOS = Nothing
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

-- | Only allows requests from devices with a verified Chrome OS.
-- Verifications includes requirements that the device is
-- enterprise-managed, conformant to domain policies, and the caller has
-- permission to call the API targeted by the request.
ocRequireVerifiedChromeOS :: Lens' OSConstraint (Maybe Bool)
ocRequireVerifiedChromeOS
  = lens _ocRequireVerifiedChromeOS
      (\ s a -> s{_ocRequireVerifiedChromeOS = a})

instance FromJSON OSConstraint where
        parseJSON
          = withObject "OSConstraint"
              (\ o ->
                 OSConstraint' <$>
                   (o .:? "osType") <*> (o .:? "minimumVersion") <*>
                     (o .:? "requireVerifiedChromeOs"))

instance ToJSON OSConstraint where
        toJSON OSConstraint'{..}
          = object
              (catMaybes
                 [("osType" .=) <$> _ocOSType,
                  ("minimumVersion" .=) <$> _ocMinimumVersion,
                  ("requireVerifiedChromeOs" .=) <$>
                    _ocRequireVerifiedChromeOS])

-- | Defines the conditions under which an IngressPolicy matches a request.
-- Conditions are based on information about the source of the request. The
-- request must satisfy what is defined in \`sources\` AND identity related
-- fields in order to match.
--
-- /See:/ 'ingressFrom' smart constructor.
data IngressFrom =
  IngressFrom'
    { _ifIdentityType :: !(Maybe IngressFromIdentityType)
    , _ifSources :: !(Maybe [IngressSource])
    , _ifIdentities :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IngressFrom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifIdentityType'
--
-- * 'ifSources'
--
-- * 'ifIdentities'
ingressFrom
    :: IngressFrom
ingressFrom =
  IngressFrom'
    {_ifIdentityType = Nothing, _ifSources = Nothing, _ifIdentities = Nothing}


-- | Specifies the type of identities that are allowed access from outside
-- the perimeter. If left unspecified, then members of \`identities\` field
-- will be allowed access.
ifIdentityType :: Lens' IngressFrom (Maybe IngressFromIdentityType)
ifIdentityType
  = lens _ifIdentityType
      (\ s a -> s{_ifIdentityType = a})

-- | Sources that this IngressPolicy authorizes access from.
ifSources :: Lens' IngressFrom [IngressSource]
ifSources
  = lens _ifSources (\ s a -> s{_ifSources = a}) .
      _Default
      . _Coerce

-- | A list of identities that are allowed access through this ingress
-- policy. Should be in the format of email address. The email address
-- should represent individual user or service account only.
ifIdentities :: Lens' IngressFrom [Text]
ifIdentities
  = lens _ifIdentities (\ s a -> s{_ifIdentities = a})
      . _Default
      . _Coerce

instance FromJSON IngressFrom where
        parseJSON
          = withObject "IngressFrom"
              (\ o ->
                 IngressFrom' <$>
                   (o .:? "identityType") <*>
                     (o .:? "sources" .!= mempty)
                     <*> (o .:? "identities" .!= mempty))

instance ToJSON IngressFrom where
        toJSON IngressFrom'{..}
          = object
              (catMaybes
                 [("identityType" .=) <$> _ifIdentityType,
                  ("sources" .=) <$> _ifSources,
                  ("identities" .=) <$> _ifIdentities])

-- | A response to ReplaceServicePerimetersRequest. This will be put inside
-- of Operation.response field.
--
-- /See:/ 'replaceServicePerimetersResponse' smart constructor.
newtype ReplaceServicePerimetersResponse =
  ReplaceServicePerimetersResponse'
    { _rServicePerimeters :: Maybe [ServicePerimeter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceServicePerimetersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rServicePerimeters'
replaceServicePerimetersResponse
    :: ReplaceServicePerimetersResponse
replaceServicePerimetersResponse =
  ReplaceServicePerimetersResponse' {_rServicePerimeters = Nothing}


-- | List of the Service Perimeter instances.
rServicePerimeters :: Lens' ReplaceServicePerimetersResponse [ServicePerimeter]
rServicePerimeters
  = lens _rServicePerimeters
      (\ s a -> s{_rServicePerimeters = a})
      . _Default
      . _Coerce

instance FromJSON ReplaceServicePerimetersResponse
         where
        parseJSON
          = withObject "ReplaceServicePerimetersResponse"
              (\ o ->
                 ReplaceServicePerimetersResponse' <$>
                   (o .:? "servicePerimeters" .!= mempty))

instance ToJSON ReplaceServicePerimetersResponse
         where
        toJSON ReplaceServicePerimetersResponse'{..}
          = object
              (catMaybes
                 [("servicePerimeters" .=) <$> _rServicePerimeters])

-- | \`AccessPolicy\` is a container for \`AccessLevels\` (which define the
-- necessary attributes to use Google Cloud services) and
-- \`ServicePerimeters\` (which define regions of services able to freely
-- pass data within a perimeter). An access policy is globally visible
-- within an organization, and the restrictions it specifies apply to all
-- projects within an organization.
--
-- /See:/ 'accessPolicy' smart constructor.
data AccessPolicy =
  AccessPolicy'
    { _apParent :: !(Maybe Text)
    , _apEtag :: !(Maybe Text)
    , _apName :: !(Maybe Text)
    , _apTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apParent'
--
-- * 'apEtag'
--
-- * 'apName'
--
-- * 'apTitle'
accessPolicy
    :: AccessPolicy
accessPolicy =
  AccessPolicy'
    { _apParent = Nothing
    , _apEtag = Nothing
    , _apName = Nothing
    , _apTitle = Nothing
    }


-- | Required. The parent of this \`AccessPolicy\` in the Cloud Resource
-- Hierarchy. Currently immutable once created. Format:
-- \`organizations\/{organization_id}\`
apParent :: Lens' AccessPolicy (Maybe Text)
apParent = lens _apParent (\ s a -> s{_apParent = a})

-- | Output only. An opaque identifier for the current version of the
-- \`AccessPolicy\`. This will always be a strongly validated etag, meaning
-- that two Access Polices will be identical if and only if their etags are
-- identical. Clients should not expect this to be in any specific format.
apEtag :: Lens' AccessPolicy (Maybe Text)
apEtag = lens _apEtag (\ s a -> s{_apEtag = a})

-- | Output only. Resource name of the \`AccessPolicy\`. Format:
-- \`accessPolicies\/{policy_id}\`
apName :: Lens' AccessPolicy (Maybe Text)
apName = lens _apName (\ s a -> s{_apName = a})

-- | Required. Human readable title. Does not affect behavior.
apTitle :: Lens' AccessPolicy (Maybe Text)
apTitle = lens _apTitle (\ s a -> s{_apTitle = a})

instance FromJSON AccessPolicy where
        parseJSON
          = withObject "AccessPolicy"
              (\ o ->
                 AccessPolicy' <$>
                   (o .:? "parent") <*> (o .:? "etag") <*>
                     (o .:? "name")
                     <*> (o .:? "title"))

instance ToJSON AccessPolicy where
        toJSON AccessPolicy'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _apParent,
                  ("etag" .=) <$> _apEtag, ("name" .=) <$> _apName,
                  ("title" .=) <$> _apTitle])

-- | A request to replace all existing Access Levels in an Access Policy with
-- the Access Levels provided. This is done atomically.
--
-- /See:/ 'replaceAccessLevelsRequest' smart constructor.
data ReplaceAccessLevelsRequest =
  ReplaceAccessLevelsRequest'
    { _rEtag :: !(Maybe Text)
    , _rAccessLevels :: !(Maybe [AccessLevel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceAccessLevelsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEtag'
--
-- * 'rAccessLevels'
replaceAccessLevelsRequest
    :: ReplaceAccessLevelsRequest
replaceAccessLevelsRequest =
  ReplaceAccessLevelsRequest' {_rEtag = Nothing, _rAccessLevels = Nothing}


-- | Optional. The etag for the version of the Access Policy that this
-- replace operation is to be performed on. If, at the time of replace, the
-- etag for the Access Policy stored in Access Context Manager is different
-- from the specified etag, then the replace operation will not be
-- performed and the call will fail. This field is not required. If etag is
-- not provided, the operation will be performed as if a valid etag is
-- provided.
rEtag :: Lens' ReplaceAccessLevelsRequest (Maybe Text)
rEtag = lens _rEtag (\ s a -> s{_rEtag = a})

-- | Required. The desired Access Levels that should replace all existing
-- Access Levels in the Access Policy.
rAccessLevels :: Lens' ReplaceAccessLevelsRequest [AccessLevel]
rAccessLevels
  = lens _rAccessLevels
      (\ s a -> s{_rAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON ReplaceAccessLevelsRequest where
        parseJSON
          = withObject "ReplaceAccessLevelsRequest"
              (\ o ->
                 ReplaceAccessLevelsRequest' <$>
                   (o .:? "etag") <*> (o .:? "accessLevels" .!= mempty))

instance ToJSON ReplaceAccessLevelsRequest where
        toJSON ReplaceAccessLevelsRequest'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rEtag,
                  ("accessLevels" .=) <$> _rAccessLevels])

-- | Defines the conditions under which an IngressPolicy matches a request.
-- Conditions are based on information about the ApiOperation intended to
-- be performed on the target resource of the request. The request must
-- satisfy what is defined in \`operations\` AND \`resources\` in order to
-- match.
--
-- /See:/ 'ingressTo' smart constructor.
data IngressTo =
  IngressTo'
    { _itResources :: !(Maybe [Text])
    , _itOperations :: !(Maybe [APIOperation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IngressTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itResources'
--
-- * 'itOperations'
ingressTo
    :: IngressTo
ingressTo = IngressTo' {_itResources = Nothing, _itOperations = Nothing}


-- | A list of resources, currently only projects in the form \`projects\/\`,
-- protected by this ServicePerimeter that are allowed to be accessed by
-- sources defined in the corresponding IngressFrom. If a single \`*\` is
-- specified, then access to all resources inside the perimeter are
-- allowed.
itResources :: Lens' IngressTo [Text]
itResources
  = lens _itResources (\ s a -> s{_itResources = a}) .
      _Default
      . _Coerce

-- | A list of ApiOperations allowed to be performed by the sources specified
-- in corresponding IngressFrom in this ServicePerimeter.
itOperations :: Lens' IngressTo [APIOperation]
itOperations
  = lens _itOperations (\ s a -> s{_itOperations = a})
      . _Default
      . _Coerce

instance FromJSON IngressTo where
        parseJSON
          = withObject "IngressTo"
              (\ o ->
                 IngressTo' <$>
                   (o .:? "resources" .!= mempty) <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON IngressTo where
        toJSON IngressTo'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _itResources,
                  ("operations" .=) <$> _itOperations])

-- | An allowed method or permission of a service specified in ApiOperation.
--
-- /See:/ 'methodSelector' smart constructor.
data MethodSelector =
  MethodSelector'
    { _msMethod :: !(Maybe Text)
    , _msPermission :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MethodSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msMethod'
--
-- * 'msPermission'
methodSelector
    :: MethodSelector
methodSelector = MethodSelector' {_msMethod = Nothing, _msPermission = Nothing}


-- | Value for \`method\` should be a valid method name for the corresponding
-- \`service_name\` in ApiOperation. If \`*\` used as value for \`method\`,
-- then ALL methods and permissions are allowed.
msMethod :: Lens' MethodSelector (Maybe Text)
msMethod = lens _msMethod (\ s a -> s{_msMethod = a})

-- | Value for \`permission\` should be a valid Cloud IAM permission for the
-- corresponding \`service_name\` in ApiOperation.
msPermission :: Lens' MethodSelector (Maybe Text)
msPermission
  = lens _msPermission (\ s a -> s{_msPermission = a})

instance FromJSON MethodSelector where
        parseJSON
          = withObject "MethodSelector"
              (\ o ->
                 MethodSelector' <$>
                   (o .:? "method") <*> (o .:? "permission"))

instance ToJSON MethodSelector where
        toJSON MethodSelector'{..}
          = object
              (catMaybes
                 [("method" .=) <$> _msMethod,
                  ("permission" .=) <$> _msPermission])

-- | Response of ListGcpUserAccessBindings.
--
-- /See:/ 'listGcpUserAccessBindingsResponse' smart constructor.
data ListGcpUserAccessBindingsResponse =
  ListGcpUserAccessBindingsResponse'
    { _lguabrNextPageToken :: !(Maybe Text)
    , _lguabrGcpUserAccessBindings :: !(Maybe [GcpUserAccessBinding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGcpUserAccessBindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lguabrNextPageToken'
--
-- * 'lguabrGcpUserAccessBindings'
listGcpUserAccessBindingsResponse
    :: ListGcpUserAccessBindingsResponse
listGcpUserAccessBindingsResponse =
  ListGcpUserAccessBindingsResponse'
    {_lguabrNextPageToken = Nothing, _lguabrGcpUserAccessBindings = Nothing}


-- | Token to get the next page of items. If blank, there are no more items.
lguabrNextPageToken :: Lens' ListGcpUserAccessBindingsResponse (Maybe Text)
lguabrNextPageToken
  = lens _lguabrNextPageToken
      (\ s a -> s{_lguabrNextPageToken = a})

-- | GcpUserAccessBinding
lguabrGcpUserAccessBindings :: Lens' ListGcpUserAccessBindingsResponse [GcpUserAccessBinding]
lguabrGcpUserAccessBindings
  = lens _lguabrGcpUserAccessBindings
      (\ s a -> s{_lguabrGcpUserAccessBindings = a})
      . _Default
      . _Coerce

instance FromJSON ListGcpUserAccessBindingsResponse
         where
        parseJSON
          = withObject "ListGcpUserAccessBindingsResponse"
              (\ o ->
                 ListGcpUserAccessBindingsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "gcpUserAccessBindings" .!= mempty))

instance ToJSON ListGcpUserAccessBindingsResponse
         where
        toJSON ListGcpUserAccessBindingsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lguabrNextPageToken,
                  ("gcpUserAccessBindings" .=) <$>
                    _lguabrGcpUserAccessBindings])

-- | A response to \`ListServicePerimetersRequest\`.
--
-- /See:/ 'listServicePerimetersResponse' smart constructor.
data ListServicePerimetersResponse =
  ListServicePerimetersResponse'
    { _lsprNextPageToken :: !(Maybe Text)
    , _lsprServicePerimeters :: !(Maybe [ServicePerimeter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_lsprNextPageToken = Nothing, _lsprServicePerimeters = Nothing}


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

-- | Specifies how APIs are allowed to communicate within the Service
-- Perimeter.
--
-- /See:/ 'vpcAccessibleServices' smart constructor.
data VPCAccessibleServices =
  VPCAccessibleServices'
    { _vasAllowedServices :: !(Maybe [Text])
    , _vasEnableRestriction :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPCAccessibleServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vasAllowedServices'
--
-- * 'vasEnableRestriction'
vpcAccessibleServices
    :: VPCAccessibleServices
vpcAccessibleServices =
  VPCAccessibleServices'
    {_vasAllowedServices = Nothing, _vasEnableRestriction = Nothing}


-- | The list of APIs usable within the Service Perimeter. Must be empty
-- unless \'enable_restriction\' is True. You can specify a list of
-- individual services, as well as include the \'RESTRICTED-SERVICES\'
-- value, which automatically includes all of the services protected by the
-- perimeter.
vasAllowedServices :: Lens' VPCAccessibleServices [Text]
vasAllowedServices
  = lens _vasAllowedServices
      (\ s a -> s{_vasAllowedServices = a})
      . _Default
      . _Coerce

-- | Whether to restrict API calls within the Service Perimeter to the list
-- of APIs specified in \'allowed_services\'.
vasEnableRestriction :: Lens' VPCAccessibleServices (Maybe Bool)
vasEnableRestriction
  = lens _vasEnableRestriction
      (\ s a -> s{_vasEnableRestriction = a})

instance FromJSON VPCAccessibleServices where
        parseJSON
          = withObject "VPCAccessibleServices"
              (\ o ->
                 VPCAccessibleServices' <$>
                   (o .:? "allowedServices" .!= mempty) <*>
                     (o .:? "enableRestriction"))

instance ToJSON VPCAccessibleServices where
        toJSON VPCAccessibleServices'{..}
          = object
              (catMaybes
                 [("allowedServices" .=) <$> _vasAllowedServices,
                  ("enableRestriction" .=) <$> _vasEnableRestriction])

-- | \`CustomLevel\` is an \`AccessLevel\` using the Cloud Common Expression
-- Language to represent the necessary conditions for the level to apply to
-- a request. See CEL spec at: https:\/\/github.com\/google\/cel-spec
--
-- /See:/ 'customLevel' smart constructor.
newtype CustomLevel =
  CustomLevel'
    { _clExpr :: Maybe Expr
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clExpr'
customLevel
    :: CustomLevel
customLevel = CustomLevel' {_clExpr = Nothing}


-- | Required. A Cloud CEL expression evaluating to a boolean.
clExpr :: Lens' CustomLevel (Maybe Expr)
clExpr = lens _clExpr (\ s a -> s{_clExpr = a})

instance FromJSON CustomLevel where
        parseJSON
          = withObject "CustomLevel"
              (\ o -> CustomLevel' <$> (o .:? "expr"))

instance ToJSON CustomLevel where
        toJSON CustomLevel'{..}
          = object (catMaybes [("expr" .=) <$> _clExpr])

-- | Identification for an API Operation.
--
-- /See:/ 'apiOperation' smart constructor.
data APIOperation =
  APIOperation'
    { _aoMethodSelectors :: !(Maybe [MethodSelector])
    , _aoServiceName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APIOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoMethodSelectors'
--
-- * 'aoServiceName'
apiOperation
    :: APIOperation
apiOperation =
  APIOperation' {_aoMethodSelectors = Nothing, _aoServiceName = Nothing}


-- | API methods or permissions to allow. Method or permission must belong to
-- the service specified by \`service_name\` field. A single MethodSelector
-- entry with \`*\` specified for the \`method\` field will allow all
-- methods AND permissions for the service specified in \`service_name\`.
aoMethodSelectors :: Lens' APIOperation [MethodSelector]
aoMethodSelectors
  = lens _aoMethodSelectors
      (\ s a -> s{_aoMethodSelectors = a})
      . _Default
      . _Coerce

-- | The name of the API whose methods or permissions the IngressPolicy or
-- EgressPolicy want to allow. A single ApiOperation with \`service_name\`
-- field set to \`*\` will allow all methods AND permissions for all
-- services.
aoServiceName :: Lens' APIOperation (Maybe Text)
aoServiceName
  = lens _aoServiceName
      (\ s a -> s{_aoServiceName = a})

instance FromJSON APIOperation where
        parseJSON
          = withObject "APIOperation"
              (\ o ->
                 APIOperation' <$>
                   (o .:? "methodSelectors" .!= mempty) <*>
                     (o .:? "serviceName"))

instance ToJSON APIOperation where
        toJSON APIOperation'{..}
          = object
              (catMaybes
                 [("methodSelectors" .=) <$> _aoMethodSelectors,
                  ("serviceName" .=) <$> _aoServiceName])

-- | A response to \`ListAccessLevelsRequest\`.
--
-- /See:/ 'listAccessLevelsResponse' smart constructor.
data ListAccessLevelsResponse =
  ListAccessLevelsResponse'
    { _lalrNextPageToken :: !(Maybe Text)
    , _lalrAccessLevels :: !(Maybe [AccessLevel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_lalrNextPageToken = Nothing, _lalrAccessLevels = Nothing}


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
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


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
data DevicePolicy =
  DevicePolicy'
    { _dpOSConstraints :: !(Maybe [OSConstraint])
    , _dpRequireAdminApproval :: !(Maybe Bool)
    , _dpRequireCorpOwned :: !(Maybe Bool)
    , _dpRequireScreenlock :: !(Maybe Bool)
    , _dpAllowedEncryptionStatuses :: !(Maybe [DevicePolicyAllowedEncryptionStatusesItem])
    , _dpAllowedDeviceManagementLevels :: !(Maybe [DevicePolicyAllowedDeviceManagementLevelsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpOSConstraints'
--
-- * 'dpRequireAdminApproval'
--
-- * 'dpRequireCorpOwned'
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
    , _dpRequireAdminApproval = Nothing
    , _dpRequireCorpOwned = Nothing
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

-- | Whether the device needs to be approved by the customer admin.
dpRequireAdminApproval :: Lens' DevicePolicy (Maybe Bool)
dpRequireAdminApproval
  = lens _dpRequireAdminApproval
      (\ s a -> s{_dpRequireAdminApproval = a})

-- | Whether the device needs to be corp owned.
dpRequireCorpOwned :: Lens' DevicePolicy (Maybe Bool)
dpRequireCorpOwned
  = lens _dpRequireCorpOwned
      (\ s a -> s{_dpRequireCorpOwned = a})

-- | Whether or not screenlock is required for the DevicePolicy to be true.
-- Defaults to \`false\`.
dpRequireScreenlock :: Lens' DevicePolicy (Maybe Bool)
dpRequireScreenlock
  = lens _dpRequireScreenlock
      (\ s a -> s{_dpRequireScreenlock = a})

-- | Allowed encryptions statuses, an empty list allows all statuses.
dpAllowedEncryptionStatuses :: Lens' DevicePolicy [DevicePolicyAllowedEncryptionStatusesItem]
dpAllowedEncryptionStatuses
  = lens _dpAllowedEncryptionStatuses
      (\ s a -> s{_dpAllowedEncryptionStatuses = a})
      . _Default
      . _Coerce

-- | Allowed device management levels, an empty list allows all management
-- levels.
dpAllowedDeviceManagementLevels :: Lens' DevicePolicy [DevicePolicyAllowedDeviceManagementLevelsItem]
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
                     (o .:? "requireAdminApproval")
                     <*> (o .:? "requireCorpOwned")
                     <*> (o .:? "requireScreenlock")
                     <*> (o .:? "allowedEncryptionStatuses" .!= mempty)
                     <*>
                     (o .:? "allowedDeviceManagementLevels" .!= mempty))

instance ToJSON DevicePolicy where
        toJSON DevicePolicy'{..}
          = object
              (catMaybes
                 [("osConstraints" .=) <$> _dpOSConstraints,
                  ("requireAdminApproval" .=) <$>
                    _dpRequireAdminApproval,
                  ("requireCorpOwned" .=) <$> _dpRequireCorpOwned,
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
data Condition =
  Condition'
    { _cMembers :: !(Maybe [Text])
    , _cRegions :: !(Maybe [Text])
    , _cNegate :: !(Maybe Bool)
    , _cIPSubnetworks :: !(Maybe [Text])
    , _cDevicePolicy :: !(Maybe DevicePolicy)
    , _cRequiredAccessLevels :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cMembers'
--
-- * 'cRegions'
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
    , _cRegions = Nothing
    , _cNegate = Nothing
    , _cIPSubnetworks = Nothing
    , _cDevicePolicy = Nothing
    , _cRequiredAccessLevels = Nothing
    }


-- | The request must be made by one of the provided user or service
-- accounts. Groups are not supported. Syntax: \`user:{emailid}\`
-- \`serviceAccount:{emailid}\` If not specified, a request may come from
-- any user.
cMembers :: Lens' Condition [Text]
cMembers
  = lens _cMembers (\ s a -> s{_cMembers = a}) .
      _Default
      . _Coerce

-- | The request must originate from one of the provided countries\/regions.
-- Must be valid ISO 3166-1 alpha-2 codes.
cRegions :: Lens' Condition [Text]
cRegions
  = lens _cRegions (\ s a -> s{_cRegions = a}) .
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
                   (o .:? "members" .!= mempty) <*>
                     (o .:? "regions" .!= mempty)
                     <*> (o .:? "negate")
                     <*> (o .:? "ipSubnetworks" .!= mempty)
                     <*> (o .:? "devicePolicy")
                     <*> (o .:? "requiredAccessLevels" .!= mempty))

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _cMembers,
                  ("regions" .=) <$> _cRegions,
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
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


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

-- | A response to CommitServicePerimetersRequest. This will be put inside of
-- Operation.response field.
--
-- /See:/ 'commitServicePerimetersResponse' smart constructor.
newtype CommitServicePerimetersResponse =
  CommitServicePerimetersResponse'
    { _csprServicePerimeters :: Maybe [ServicePerimeter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommitServicePerimetersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csprServicePerimeters'
commitServicePerimetersResponse
    :: CommitServicePerimetersResponse
commitServicePerimetersResponse =
  CommitServicePerimetersResponse' {_csprServicePerimeters = Nothing}


-- | List of all the Service Perimeter instances in the Access Policy.
csprServicePerimeters :: Lens' CommitServicePerimetersResponse [ServicePerimeter]
csprServicePerimeters
  = lens _csprServicePerimeters
      (\ s a -> s{_csprServicePerimeters = a})
      . _Default
      . _Coerce

instance FromJSON CommitServicePerimetersResponse
         where
        parseJSON
          = withObject "CommitServicePerimetersResponse"
              (\ o ->
                 CommitServicePerimetersResponse' <$>
                   (o .:? "servicePerimeters" .!= mempty))

instance ToJSON CommitServicePerimetersResponse where
        toJSON CommitServicePerimetersResponse'{..}
          = object
              (catMaybes
                 [("servicePerimeters" .=) <$>
                    _csprServicePerimeters])
