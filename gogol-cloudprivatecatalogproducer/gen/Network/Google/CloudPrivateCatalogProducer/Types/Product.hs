{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudPrivateCatalogProducer.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudPrivateCatalogProducer.Types.Product where

import Network.Google.CloudPrivateCatalogProducer.Types.Sum
import Network.Google.Prelude

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'googleRpcStatus' smart constructor.
data GoogleRpcStatus =
  GoogleRpcStatus'
    { _grsDetails :: !(Maybe [GoogleRpcStatusDetailsItem])
    , _grsCode :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpcStatus
    :: GoogleRpcStatus
googleRpcStatus =
  GoogleRpcStatus'
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
grsDetails :: Lens' GoogleRpcStatus [GoogleRpcStatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpcStatus (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpcStatus (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpcStatus where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunningOperationMetadata' smart constructor.
newtype GoogleLongrunningOperationMetadata =
  GoogleLongrunningOperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glomAddtional'
googleLongrunningOperationMetadata
    :: HashMap Text JSONValue -- ^ 'glomAddtional'
    -> GoogleLongrunningOperationMetadata
googleLongrunningOperationMetadata pGlomAddtional_ =
  GoogleLongrunningOperationMetadata'
    {_glomAddtional = _Coerce # pGlomAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunningOperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationMetadata
         where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunningOperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationMetadata
         where
        toJSON = toJSON . _glomAddtional

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1ListVersionsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse'
    { _gcpvlvrNextPageToken :: !(Maybe Text)
    , _gcpvlvrVersions :: !(Maybe [GoogleCloudPrivatecatalogproducerV1beta1Version])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvlvrNextPageToken'
--
-- * 'gcpvlvrVersions'
googleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    :: GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
googleCloudPrivatecatalogproducerV1beta1ListVersionsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse'
    {_gcpvlvrNextPageToken = Nothing, _gcpvlvrVersions = Nothing}


-- | A pagination token returned from a previous call to ListProducts that
-- indicates where the listing should continue from. This field is
-- optional.
gcpvlvrNextPageToken :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse (Maybe Text)
gcpvlvrNextPageToken
  = lens _gcpvlvrNextPageToken
      (\ s a -> s{_gcpvlvrNextPageToken = a})

-- | The \`VersiVersionon\` returned from the list call.
gcpvlvrVersions :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse [GoogleCloudPrivatecatalogproducerV1beta1Version]
gcpvlvrVersions
  = lens _gcpvlvrVersions
      (\ s a -> s{_gcpvlvrVersions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcpvlvrNextPageToken,
                  ("versions" .=) <$> _gcpvlvrVersions])

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest =
  GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest' with the minimum fields required to make a request.
--
googleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    :: GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
googleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest =
  GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest'


instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest"
              (\ o ->
                 pure
                   GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest')

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
         where
        toJSON = const emptyObject

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'googleIAMV1Binding' smart constructor.
data GoogleIAMV1Binding =
  GoogleIAMV1Binding'
    { _givbMembers :: !(Maybe [Text])
    , _givbRole :: !(Maybe Text)
    , _givbCondition :: !(Maybe GoogleTypeExpr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIAMV1Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givbMembers'
--
-- * 'givbRole'
--
-- * 'givbCondition'
googleIAMV1Binding
    :: GoogleIAMV1Binding
googleIAMV1Binding =
  GoogleIAMV1Binding'
    {_givbMembers = Nothing, _givbRole = Nothing, _givbCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
givbMembers :: Lens' GoogleIAMV1Binding [Text]
givbMembers
  = lens _givbMembers (\ s a -> s{_givbMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
givbRole :: Lens' GoogleIAMV1Binding (Maybe Text)
givbRole = lens _givbRole (\ s a -> s{_givbRole = a})

-- | The condition that is associated with this binding. NOTE: An unsatisfied
-- condition will not allow user access via current binding. Different
-- bindings, including their conditions, are examined independently.
givbCondition :: Lens' GoogleIAMV1Binding (Maybe GoogleTypeExpr)
givbCondition
  = lens _givbCondition
      (\ s a -> s{_givbCondition = a})

instance FromJSON GoogleIAMV1Binding where
        parseJSON
          = withObject "GoogleIAMV1Binding"
              (\ o ->
                 GoogleIAMV1Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON GoogleIAMV1Binding where
        toJSON GoogleIAMV1Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _givbMembers,
                  ("role" .=) <$> _givbRole,
                  ("condition" .=) <$> _givbCondition])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'googleIAMV1SetIAMPolicyRequest' smart constructor.
data GoogleIAMV1SetIAMPolicyRequest =
  GoogleIAMV1SetIAMPolicyRequest'
    { _givsiprUpdateMask :: !(Maybe GFieldMask)
    , _givsiprPolicy :: !(Maybe GoogleIAMV1Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIAMV1SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givsiprUpdateMask'
--
-- * 'givsiprPolicy'
googleIAMV1SetIAMPolicyRequest
    :: GoogleIAMV1SetIAMPolicyRequest
googleIAMV1SetIAMPolicyRequest =
  GoogleIAMV1SetIAMPolicyRequest'
    {_givsiprUpdateMask = Nothing, _givsiprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: paths: \"bindings, etag\" This field
-- is only used by Cloud IAM.
givsiprUpdateMask :: Lens' GoogleIAMV1SetIAMPolicyRequest (Maybe GFieldMask)
givsiprUpdateMask
  = lens _givsiprUpdateMask
      (\ s a -> s{_givsiprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
givsiprPolicy :: Lens' GoogleIAMV1SetIAMPolicyRequest (Maybe GoogleIAMV1Policy)
givsiprPolicy
  = lens _givsiprPolicy
      (\ s a -> s{_givsiprPolicy = a})

instance FromJSON GoogleIAMV1SetIAMPolicyRequest
         where
        parseJSON
          = withObject "GoogleIAMV1SetIAMPolicyRequest"
              (\ o ->
                 GoogleIAMV1SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON GoogleIAMV1SetIAMPolicyRequest where
        toJSON GoogleIAMV1SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _givsiprUpdateMask,
                  ("policy" .=) <$> _givsiprPolicy])

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse'
    { _gcpvlcrNextPageToken :: !(Maybe Text)
    , _gcpvlcrCatalogs :: !(Maybe [GoogleCloudPrivatecatalogproducerV1beta1Catalog])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvlcrNextPageToken'
--
-- * 'gcpvlcrCatalogs'
googleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    :: GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
googleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse'
    {_gcpvlcrNextPageToken = Nothing, _gcpvlcrCatalogs = Nothing}


-- | A pagination token returned from a previous call to ListCatalogs that
-- indicates where the listing should continue from. This field is
-- optional.
gcpvlcrNextPageToken :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse (Maybe Text)
gcpvlcrNextPageToken
  = lens _gcpvlcrNextPageToken
      (\ s a -> s{_gcpvlcrNextPageToken = a})

-- | The \`Catalogs\` returned from the list call.
gcpvlcrCatalogs :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse [GoogleCloudPrivatecatalogproducerV1beta1Catalog]
gcpvlcrCatalogs
  = lens _gcpvlcrCatalogs
      (\ s a -> s{_gcpvlcrCatalogs = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "catalogs" .!= mempty))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcpvlcrNextPageToken,
                  ("catalogs" .=) <$> _gcpvlcrCatalogs])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty =
  GoogleProtobufEmpty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
--
googleProtobufEmpty
    :: GoogleProtobufEmpty
googleProtobufEmpty = GoogleProtobufEmpty'


instance FromJSON GoogleProtobufEmpty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobufEmpty')

instance ToJSON GoogleProtobufEmpty where
        toJSON = const emptyObject

--
-- /See:/ 'googleRpcStatusDetailsItem' smart constructor.
newtype GoogleRpcStatusDetailsItem =
  GoogleRpcStatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpcStatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpcStatusDetailsItem
googleRpcStatusDetailsItem pGrsdiAddtional_ =
  GoogleRpcStatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpcStatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpcStatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpcStatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON GoogleRpcStatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1UploadIconRequest' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest =
  GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest'
    { _gcpvuirIcon :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvuirIcon'
googleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    :: GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
googleCloudPrivatecatalogproducerV1beta1UploadIconRequest =
  GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest'
    {_gcpvuirIcon = Nothing}


-- | The raw icon bytes user-supplied to be uploaded to the product. The
-- format of the icon can only be PNG or JPEG. The minimum allowed
-- dimensions are 130x130 pixels and the maximum dimensions are 10000x10000
-- pixels. Required.
gcpvuirIcon :: Lens' GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest (Maybe ByteString)
gcpvuirIcon
  = lens _gcpvuirIcon (\ s a -> s{_gcpvuirIcon = a}) .
      mapping _Bytes

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest'
                   <$> (o .:? "icon"))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest'{..}
          = object (catMaybes [("icon" .=) <$> _gcpvuirIcon])

-- | The user-supplied display metadata to describe the product. The JSON
-- schema of the metadata differs by Product.asset_type. When the type is
-- \`google.deploymentmanager.Template\`, the schema is as follows: \`\`\`
-- \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object
-- properties: name: type: string minLength: 1 maxLength: 64 description:
-- type: string minLength: 1 maxLength: 2048 tagline: type: string
-- minLength: 1 maxLength: 100 support_info: type: string minLength: 1
-- maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 required: - name - description
-- additionalProperties: false \`\`\` When the asset type is
-- \`google.cloudprivatecatalog.ListingOnly\`, the schema is as follows:
-- \`\`\` \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type:
-- object properties: name: type: string minLength: 1 maxLength: 64
-- description: type: string minLength: 1 maxLength: 2048 tagline: type:
-- string minLength: 1 maxLength: 100 support_info: type: string minLength:
-- 1 maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 signup_url: type: string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- required: - name - description - signup_url additionalProperties: false
-- \`\`\`
--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata =
  GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata'
    { _gcpvpdmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvpdmAddtional'
googleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
    :: HashMap Text JSONValue -- ^ 'gcpvpdmAddtional'
    -> GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
googleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata pGcpvpdmAddtional_ =
  GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata'
    {_gcpvpdmAddtional = _Coerce # pGcpvpdmAddtional_}


-- | Properties of the object.
gcpvpdmAddtional :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata (HashMap Text JSONValue)
gcpvpdmAddtional
  = lens _gcpvpdmAddtional
      (\ s a -> s{_gcpvpdmAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
         where
        toJSON = toJSON . _gcpvpdmAddtional

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'googleLongrunningCancelOperationRequest' smart constructor.
data GoogleLongrunningCancelOperationRequest =
  GoogleLongrunningCancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningCancelOperationRequest' with the minimum fields required to make a request.
--
googleLongrunningCancelOperationRequest
    :: GoogleLongrunningCancelOperationRequest
googleLongrunningCancelOperationRequest =
  GoogleLongrunningCancelOperationRequest'


instance FromJSON
           GoogleLongrunningCancelOperationRequest
         where
        parseJSON
          = withObject
              "GoogleLongrunningCancelOperationRequest"
              (\ o ->
                 pure GoogleLongrunningCancelOperationRequest')

instance ToJSON
           GoogleLongrunningCancelOperationRequest
         where
        toJSON = const emptyObject

-- | The producer representation of a catalog which is a curated collection
-- of solutions that can be managed, controlled, and shared by cloud
-- admins.
--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1Catalog' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Catalog =
  GoogleCloudPrivatecatalogproducerV1beta1Catalog'
    { _gcpvcParent :: !(Maybe Text)
    , _gcpvcUpdateTime :: !(Maybe DateTime')
    , _gcpvcName :: !(Maybe Text)
    , _gcpvcDisplayName :: !(Maybe Text)
    , _gcpvcDescription :: !(Maybe Text)
    , _gcpvcCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Catalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvcParent'
--
-- * 'gcpvcUpdateTime'
--
-- * 'gcpvcName'
--
-- * 'gcpvcDisplayName'
--
-- * 'gcpvcDescription'
--
-- * 'gcpvcCreateTime'
googleCloudPrivatecatalogproducerV1beta1Catalog
    :: GoogleCloudPrivatecatalogproducerV1beta1Catalog
googleCloudPrivatecatalogproducerV1beta1Catalog =
  GoogleCloudPrivatecatalogproducerV1beta1Catalog'
    { _gcpvcParent = Nothing
    , _gcpvcUpdateTime = Nothing
    , _gcpvcName = Nothing
    , _gcpvcDisplayName = Nothing
    , _gcpvcDescription = Nothing
    , _gcpvcCreateTime = Nothing
    }


-- | Required. The parent resource name of the catalog, which can\'t be
-- changed after a catalog is created. It can only be an organization.
-- Values are of the form
-- \`\/\/cloudresourcemanager.googleapis.com\/organizations\/\`. Maximum
-- 256 characters in length.
gcpvcParent :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Catalog (Maybe Text)
gcpvcParent
  = lens _gcpvcParent (\ s a -> s{_gcpvcParent = a})

-- | Output only. The time when the catalog was last updated.
gcpvcUpdateTime :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Catalog (Maybe UTCTime)
gcpvcUpdateTime
  = lens _gcpvcUpdateTime
      (\ s a -> s{_gcpvcUpdateTime = a})
      . mapping _DateTime

-- | Output only. The resource name of the catalog, in the format
-- \`catalogs\/{catalog_id}\'. A unique identifier for the catalog, which
-- is generated by catalog service.
gcpvcName :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Catalog (Maybe Text)
gcpvcName
  = lens _gcpvcName (\ s a -> s{_gcpvcName = a})

-- | Required. The user-supplied descriptive name of the catalog as it
-- appears in UIs. Maximum 256 characters in length.
gcpvcDisplayName :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Catalog (Maybe Text)
gcpvcDisplayName
  = lens _gcpvcDisplayName
      (\ s a -> s{_gcpvcDisplayName = a})

-- | Required. The user-supplied description of the catalog. Maximum of 512
-- characters.
gcpvcDescription :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Catalog (Maybe Text)
gcpvcDescription
  = lens _gcpvcDescription
      (\ s a -> s{_gcpvcDescription = a})

-- | Output only. The time when the catalog was created.
gcpvcCreateTime :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Catalog (Maybe UTCTime)
gcpvcCreateTime
  = lens _gcpvcCreateTime
      (\ s a -> s{_gcpvcCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1Catalog
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1Catalog"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1Catalog' <$>
                   (o .:? "parent") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1Catalog
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1Catalog'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gcpvcParent,
                  ("updateTime" .=) <$> _gcpvcUpdateTime,
                  ("name" .=) <$> _gcpvcName,
                  ("displayName" .=) <$> _gcpvcDisplayName,
                  ("description" .=) <$> _gcpvcDescription,
                  ("createTime" .=) <$> _gcpvcCreateTime])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'googleIAMV1TestIAMPermissionsRequest' smart constructor.
newtype GoogleIAMV1TestIAMPermissionsRequest =
  GoogleIAMV1TestIAMPermissionsRequest'
    { _givtiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIAMV1TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givtiprPermissions'
googleIAMV1TestIAMPermissionsRequest
    :: GoogleIAMV1TestIAMPermissionsRequest
googleIAMV1TestIAMPermissionsRequest =
  GoogleIAMV1TestIAMPermissionsRequest' {_givtiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
givtiprPermissions :: Lens' GoogleIAMV1TestIAMPermissionsRequest [Text]
givtiprPermissions
  = lens _givtiprPermissions
      (\ s a -> s{_givtiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIAMV1TestIAMPermissionsRequest
         where
        parseJSON
          = withObject "GoogleIAMV1TestIAMPermissionsRequest"
              (\ o ->
                 GoogleIAMV1TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON GoogleIAMV1TestIAMPermissionsRequest
         where
        toJSON GoogleIAMV1TestIAMPermissionsRequest'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _givtiprPermissions])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\" \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", }, { \"log_type\": \"ADMIN_READ\", } ] }, { \"service\":
-- \"sampleservice.googleapis.com\" \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\", }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'googleIAMV1AuditConfig' smart constructor.
data GoogleIAMV1AuditConfig =
  GoogleIAMV1AuditConfig'
    { _givacService :: !(Maybe Text)
    , _givacAuditLogConfigs :: !(Maybe [GoogleIAMV1AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIAMV1AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givacService'
--
-- * 'givacAuditLogConfigs'
googleIAMV1AuditConfig
    :: GoogleIAMV1AuditConfig
googleIAMV1AuditConfig =
  GoogleIAMV1AuditConfig'
    {_givacService = Nothing, _givacAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
givacService :: Lens' GoogleIAMV1AuditConfig (Maybe Text)
givacService
  = lens _givacService (\ s a -> s{_givacService = a})

-- | The configuration for logging of each type of permission.
givacAuditLogConfigs :: Lens' GoogleIAMV1AuditConfig [GoogleIAMV1AuditLogConfig]
givacAuditLogConfigs
  = lens _givacAuditLogConfigs
      (\ s a -> s{_givacAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON GoogleIAMV1AuditConfig where
        parseJSON
          = withObject "GoogleIAMV1AuditConfig"
              (\ o ->
                 GoogleIAMV1AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON GoogleIAMV1AuditConfig where
        toJSON GoogleIAMV1AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _givacService,
                  ("auditLogConfigs" .=) <$> _givacAuditLogConfigs])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'googleLongrunningOperationResponse' smart constructor.
newtype GoogleLongrunningOperationResponse =
  GoogleLongrunningOperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorAddtional'
googleLongrunningOperationResponse
    :: HashMap Text JSONValue -- ^ 'glorAddtional'
    -> GoogleLongrunningOperationResponse
googleLongrunningOperationResponse pGlorAddtional_ =
  GoogleLongrunningOperationResponse'
    {_glorAddtional = _Coerce # pGlorAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunningOperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationResponse
         where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunningOperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationResponse
         where
        toJSON = toJSON . _glorAddtional

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1CopyProductRequest' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest =
  GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest'
    { _gcpvcprDestinationProductName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvcprDestinationProductName'
googleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    :: GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
googleCloudPrivatecatalogproducerV1beta1CopyProductRequest =
  GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest'
    {_gcpvcprDestinationProductName = Nothing}


-- | The resource name of the destination product that is copied to.
gcpvcprDestinationProductName :: Lens' GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest (Maybe Text)
gcpvcprDestinationProductName
  = lens _gcpvcprDestinationProductName
      (\ s a -> s{_gcpvcprDestinationProductName = a})

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest'
                   <$> (o .:? "destinationProductName"))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest'{..}
          = object
              (catMaybes
                 [("destinationProductName" .=) <$>
                    _gcpvcprDestinationProductName])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'googleIAMV1AuditLogConfig' smart constructor.
data GoogleIAMV1AuditLogConfig =
  GoogleIAMV1AuditLogConfig'
    { _givalcLogType :: !(Maybe GoogleIAMV1AuditLogConfigLogType)
    , _givalcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIAMV1AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givalcLogType'
--
-- * 'givalcExemptedMembers'
googleIAMV1AuditLogConfig
    :: GoogleIAMV1AuditLogConfig
googleIAMV1AuditLogConfig =
  GoogleIAMV1AuditLogConfig'
    {_givalcLogType = Nothing, _givalcExemptedMembers = Nothing}


-- | The log type that this config enables.
givalcLogType :: Lens' GoogleIAMV1AuditLogConfig (Maybe GoogleIAMV1AuditLogConfigLogType)
givalcLogType
  = lens _givalcLogType
      (\ s a -> s{_givalcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
givalcExemptedMembers :: Lens' GoogleIAMV1AuditLogConfig [Text]
givalcExemptedMembers
  = lens _givalcExemptedMembers
      (\ s a -> s{_givalcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON GoogleIAMV1AuditLogConfig where
        parseJSON
          = withObject "GoogleIAMV1AuditLogConfig"
              (\ o ->
                 GoogleIAMV1AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON GoogleIAMV1AuditLogConfig where
        toJSON GoogleIAMV1AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _givalcLogType,
                  ("exemptedMembers" .=) <$> _givalcExemptedMembers])

-- | The producer representation of a version, which is a child resource
-- under a \`Product\` with asset data.
--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1Version' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Version =
  GoogleCloudPrivatecatalogproducerV1beta1Version'
    { _gcpvvAsset :: !(Maybe GoogleCloudPrivatecatalogproducerV1beta1VersionAsset)
    , _gcpvvOriginalAsset :: !(Maybe GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset)
    , _gcpvvUpdateTime :: !(Maybe DateTime')
    , _gcpvvName :: !(Maybe Text)
    , _gcpvvDescription :: !(Maybe Text)
    , _gcpvvCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvvAsset'
--
-- * 'gcpvvOriginalAsset'
--
-- * 'gcpvvUpdateTime'
--
-- * 'gcpvvName'
--
-- * 'gcpvvDescription'
--
-- * 'gcpvvCreateTime'
googleCloudPrivatecatalogproducerV1beta1Version
    :: GoogleCloudPrivatecatalogproducerV1beta1Version
googleCloudPrivatecatalogproducerV1beta1Version =
  GoogleCloudPrivatecatalogproducerV1beta1Version'
    { _gcpvvAsset = Nothing
    , _gcpvvOriginalAsset = Nothing
    , _gcpvvUpdateTime = Nothing
    , _gcpvvName = Nothing
    , _gcpvvDescription = Nothing
    , _gcpvvCreateTime = Nothing
    }


-- | Output only. The asset which has been validated and is ready to be
-- provisioned. See Version.original_asset for the schema.
gcpvvAsset :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Version (Maybe GoogleCloudPrivatecatalogproducerV1beta1VersionAsset)
gcpvvAsset
  = lens _gcpvvAsset (\ s a -> s{_gcpvvAsset = a})

-- | The user-supplied asset payload. The maximum size of the payload is 2MB.
-- The JSON schema of the payload is defined as: \`\`\` type: object
-- properties: mainTemplate: type: string description: The file name of the
-- main template and name prefix of schema file. The content of the main
-- template should be set in the imports list. The schema file name is
-- expected to be .schema in the imports list. required: true imports:
-- type: array description: Import template and schema file contents.
-- Required to have both and .schema files. required: true minItems: 2
-- items: type: object properties: name: type: string content: type: string
-- \`\`\`
gcpvvOriginalAsset :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Version (Maybe GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset)
gcpvvOriginalAsset
  = lens _gcpvvOriginalAsset
      (\ s a -> s{_gcpvvOriginalAsset = a})

-- | Output only. The time when the version was last updated.
gcpvvUpdateTime :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Version (Maybe UTCTime)
gcpvvUpdateTime
  = lens _gcpvvUpdateTime
      (\ s a -> s{_gcpvvUpdateTime = a})
      . mapping _DateTime

-- | Required. The resource name of the version, in the format
-- \`catalogs\/{catalog_id}\/products\/{product_id}\/versions\/a-z*[a-z0-9]\'.
-- A unique identifier for the version under a product, which can\'t be
-- changed after the version is created. The final segment of the name must
-- between 1 and 63 characters in length.
gcpvvName :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Version (Maybe Text)
gcpvvName
  = lens _gcpvvName (\ s a -> s{_gcpvvName = a})

-- | The user-supplied description of the version. Maximum of 256 characters.
gcpvvDescription :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Version (Maybe Text)
gcpvvDescription
  = lens _gcpvvDescription
      (\ s a -> s{_gcpvvDescription = a})

-- | Output only. The time when the version was created.
gcpvvCreateTime :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Version (Maybe UTCTime)
gcpvvCreateTime
  = lens _gcpvvCreateTime
      (\ s a -> s{_gcpvvCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1Version
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1Version"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1Version' <$>
                   (o .:? "asset") <*> (o .:? "originalAsset") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1Version
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1Version'{..}
          = object
              (catMaybes
                 [("asset" .=) <$> _gcpvvAsset,
                  ("originalAsset" .=) <$> _gcpvvOriginalAsset,
                  ("updateTime" .=) <$> _gcpvvUpdateTime,
                  ("name" .=) <$> _gcpvvName,
                  ("description" .=) <$> _gcpvvDescription,
                  ("createTime" .=) <$> _gcpvvCreateTime])

-- | Output only. The asset which has been validated and is ready to be
-- provisioned. See Version.original_asset for the schema.
--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1VersionAsset' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1VersionAsset =
  GoogleCloudPrivatecatalogproducerV1beta1VersionAsset'
    { _gcpvvaAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1VersionAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvvaAddtional'
googleCloudPrivatecatalogproducerV1beta1VersionAsset
    :: HashMap Text JSONValue -- ^ 'gcpvvaAddtional'
    -> GoogleCloudPrivatecatalogproducerV1beta1VersionAsset
googleCloudPrivatecatalogproducerV1beta1VersionAsset pGcpvvaAddtional_ =
  GoogleCloudPrivatecatalogproducerV1beta1VersionAsset'
    {_gcpvvaAddtional = _Coerce # pGcpvvaAddtional_}


-- | Properties of the object.
gcpvvaAddtional :: Lens' GoogleCloudPrivatecatalogproducerV1beta1VersionAsset (HashMap Text JSONValue)
gcpvvaAddtional
  = lens _gcpvvaAddtional
      (\ s a -> s{_gcpvvaAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1VersionAsset
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1VersionAsset"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1VersionAsset'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1VersionAsset
         where
        toJSON = toJSON . _gcpvvaAddtional

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'googleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse'
    { _gllorNextPageToken :: !(Maybe Text)
    , _gllorOperations :: !(Maybe [GoogleLongrunningOperation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gllorNextPageToken'
--
-- * 'gllorOperations'
googleLongrunningListOperationsResponse
    :: GoogleLongrunningListOperationsResponse
googleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse'
    {_gllorNextPageToken = Nothing, _gllorOperations = Nothing}


-- | The standard List next-page token.
gllorNextPageToken :: Lens' GoogleLongrunningListOperationsResponse (Maybe Text)
gllorNextPageToken
  = lens _gllorNextPageToken
      (\ s a -> s{_gllorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
gllorOperations :: Lens' GoogleLongrunningListOperationsResponse [GoogleLongrunningOperation]
gllorOperations
  = lens _gllorOperations
      (\ s a -> s{_gllorOperations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleLongrunningListOperationsResponse
         where
        parseJSON
          = withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunningListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON
           GoogleLongrunningListOperationsResponse
         where
        toJSON GoogleLongrunningListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gllorNextPageToken,
                  ("operations" .=) <$> _gllorOperations])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. Optionally, a \`binding\` can specify a
-- \`condition\`, which is a logical expression that allows access to a
-- resource only if the expression evaluates to \`true\`. A condition can
-- add constraints based on attributes of the request, the resource, or
-- both. **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\":
-- [\"user:eve\'example.com\"], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'googleIAMV1Policy' smart constructor.
data GoogleIAMV1Policy =
  GoogleIAMV1Policy'
    { _givpAuditConfigs :: !(Maybe [GoogleIAMV1AuditConfig])
    , _givpEtag :: !(Maybe Bytes)
    , _givpVersion :: !(Maybe (Textual Int32))
    , _givpBindings :: !(Maybe [GoogleIAMV1Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIAMV1Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givpAuditConfigs'
--
-- * 'givpEtag'
--
-- * 'givpVersion'
--
-- * 'givpBindings'
googleIAMV1Policy
    :: GoogleIAMV1Policy
googleIAMV1Policy =
  GoogleIAMV1Policy'
    { _givpAuditConfigs = Nothing
    , _givpEtag = Nothing
    , _givpVersion = Nothing
    , _givpBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
givpAuditConfigs :: Lens' GoogleIAMV1Policy [GoogleIAMV1AuditConfig]
givpAuditConfigs
  = lens _givpAuditConfigs
      (\ s a -> s{_givpAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
givpEtag :: Lens' GoogleIAMV1Policy (Maybe ByteString)
givpEtag
  = lens _givpEtag (\ s a -> s{_givpEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset.
givpVersion :: Lens' GoogleIAMV1Policy (Maybe Int32)
givpVersion
  = lens _givpVersion (\ s a -> s{_givpVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
givpBindings :: Lens' GoogleIAMV1Policy [GoogleIAMV1Binding]
givpBindings
  = lens _givpBindings (\ s a -> s{_givpBindings = a})
      . _Default
      . _Coerce

instance FromJSON GoogleIAMV1Policy where
        parseJSON
          = withObject "GoogleIAMV1Policy"
              (\ o ->
                 GoogleIAMV1Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON GoogleIAMV1Policy where
        toJSON GoogleIAMV1Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _givpAuditConfigs,
                  ("etag" .=) <$> _givpEtag,
                  ("version" .=) <$> _givpVersion,
                  ("bindings" .=) <$> _givpBindings])

-- | An association tuple that pairs a \`Catalog\` to a resource that can use
-- the \`Catalog\`. After association, a
-- google.cloud.privatecatalog.v1beta1.Catalog becomes available to
-- consumers under specified Association.resource and all of its child
-- nodes. Users who have the \`cloudprivatecatalog.targets.get\` permission
-- on any of the resource nodes can access the catalog and child products
-- under the node. For example, suppose the cloud resource hierarchy is as
-- follows: * organizations\/example.com * folders\/team * projects\/test
-- After creating an association with \`organizations\/example.com\`, the
-- catalog \`catalogs\/1\` is accessible from the following paths: *
-- organizations\/example.com * folders\/team * projects\/test Users can
-- access them by google.cloud.v1beta1.PrivateCatalog.SearchCatalogs
-- action.
--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1Association' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Association =
  GoogleCloudPrivatecatalogproducerV1beta1Association'
    { _gcpvaName :: !(Maybe Text)
    , _gcpvaResource :: !(Maybe Text)
    , _gcpvaCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Association' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvaName'
--
-- * 'gcpvaResource'
--
-- * 'gcpvaCreateTime'
googleCloudPrivatecatalogproducerV1beta1Association
    :: GoogleCloudPrivatecatalogproducerV1beta1Association
googleCloudPrivatecatalogproducerV1beta1Association =
  GoogleCloudPrivatecatalogproducerV1beta1Association'
    {_gcpvaName = Nothing, _gcpvaResource = Nothing, _gcpvaCreateTime = Nothing}


-- | Output only. The resource name of the catalog association, in the format
-- \`catalogs\/{catalog_id}\/associations\/{association_id}\'. A unique
-- identifier for the catalog association, which is generated by catalog
-- service.
gcpvaName :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Association (Maybe Text)
gcpvaName
  = lens _gcpvaName (\ s a -> s{_gcpvaName = a})

-- | Required. The user-supplied fully qualified name of the \`Resource\`
-- associated to the \`Catalog\`. It supports \`Organization\`, \`Folder\`,
-- and \`Project\`. Values are of the form *
-- \`\/\/cloudresourcemanager.googleapis.com\/projects\/{product_number}\`
-- * \`\/\/cloudresourcemanager.googleapis.com\/folders\/{folder_id}\` *
-- \`\/\/cloudresourcemanager.googleapis.com\/organizations\/{organization_id}\`
gcpvaResource :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Association (Maybe Text)
gcpvaResource
  = lens _gcpvaResource
      (\ s a -> s{_gcpvaResource = a})

-- | The creation time of the association.
gcpvaCreateTime :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Association (Maybe UTCTime)
gcpvaCreateTime
  = lens _gcpvaCreateTime
      (\ s a -> s{_gcpvaCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1Association
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1Association"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1Association'
                   <$>
                   (o .:? "name") <*> (o .:? "resource") <*>
                     (o .:? "createTime"))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1Association
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1Association'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gcpvaName,
                  ("resource" .=) <$> _gcpvaResource,
                  ("createTime" .=) <$> _gcpvaCreateTime])

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1ListProductsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse'
    { _gcpvlprNextPageToken :: !(Maybe Text)
    , _gcpvlprProducts :: !(Maybe [GoogleCloudPrivatecatalogproducerV1beta1Product])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvlprNextPageToken'
--
-- * 'gcpvlprProducts'
googleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    :: GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
googleCloudPrivatecatalogproducerV1beta1ListProductsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse'
    {_gcpvlprNextPageToken = Nothing, _gcpvlprProducts = Nothing}


-- | A pagination token returned from a previous call to ListProducts that
-- indicates where the listing should continue from. This field is
-- optional.
gcpvlprNextPageToken :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse (Maybe Text)
gcpvlprNextPageToken
  = lens _gcpvlprNextPageToken
      (\ s a -> s{_gcpvlprNextPageToken = a})

-- | The \`Product\` returned from the list call.
gcpvlprProducts :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse [GoogleCloudPrivatecatalogproducerV1beta1Product]
gcpvlprProducts
  = lens _gcpvlprProducts
      (\ s a -> s{_gcpvlprProducts = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "products" .!= mempty))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcpvlprNextPageToken,
                  ("products" .=) <$> _gcpvlprProducts])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'googleIAMV1TestIAMPermissionsResponse' smart constructor.
newtype GoogleIAMV1TestIAMPermissionsResponse =
  GoogleIAMV1TestIAMPermissionsResponse'
    { _giamvtiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIAMV1TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvtiamprPermissions'
googleIAMV1TestIAMPermissionsResponse
    :: GoogleIAMV1TestIAMPermissionsResponse
googleIAMV1TestIAMPermissionsResponse =
  GoogleIAMV1TestIAMPermissionsResponse' {_giamvtiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
giamvtiamprPermissions :: Lens' GoogleIAMV1TestIAMPermissionsResponse [Text]
giamvtiamprPermissions
  = lens _giamvtiamprPermissions
      (\ s a -> s{_giamvtiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIAMV1TestIAMPermissionsResponse
         where
        parseJSON
          = withObject "GoogleIAMV1TestIAMPermissionsResponse"
              (\ o ->
                 GoogleIAMV1TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON GoogleIAMV1TestIAMPermissionsResponse
         where
        toJSON GoogleIAMV1TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _giamvtiamprPermissions])

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest =
  GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest'
    { _gcpvcarAssociation :: Maybe GoogleCloudPrivatecatalogproducerV1beta1Association
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvcarAssociation'
googleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    :: GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
googleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest =
  GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest'
    {_gcpvcarAssociation = Nothing}


-- | The user-supplied \`Association\` that is going to be created. If the
-- \`resource\` field is set, the
-- \`privatecatalogproducer.catalogTargets.associate\` permission is
-- checked on the target resource.
gcpvcarAssociation :: Lens' GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest (Maybe GoogleCloudPrivatecatalogproducerV1beta1Association)
gcpvcarAssociation
  = lens _gcpvcarAssociation
      (\ s a -> s{_gcpvcarAssociation = a})

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest'
                   <$> (o .:? "association"))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest'{..}
          = object
              (catMaybes
                 [("association" .=) <$> _gcpvcarAssociation])

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
-- /See:/ 'googleTypeExpr' smart constructor.
data GoogleTypeExpr =
  GoogleTypeExpr'
    { _gteLocation :: !(Maybe Text)
    , _gteExpression :: !(Maybe Text)
    , _gteTitle :: !(Maybe Text)
    , _gteDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleTypeExpr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gteLocation'
--
-- * 'gteExpression'
--
-- * 'gteTitle'
--
-- * 'gteDescription'
googleTypeExpr
    :: GoogleTypeExpr
googleTypeExpr =
  GoogleTypeExpr'
    { _gteLocation = Nothing
    , _gteExpression = Nothing
    , _gteTitle = Nothing
    , _gteDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
gteLocation :: Lens' GoogleTypeExpr (Maybe Text)
gteLocation
  = lens _gteLocation (\ s a -> s{_gteLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
gteExpression :: Lens' GoogleTypeExpr (Maybe Text)
gteExpression
  = lens _gteExpression
      (\ s a -> s{_gteExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
gteTitle :: Lens' GoogleTypeExpr (Maybe Text)
gteTitle = lens _gteTitle (\ s a -> s{_gteTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
gteDescription :: Lens' GoogleTypeExpr (Maybe Text)
gteDescription
  = lens _gteDescription
      (\ s a -> s{_gteDescription = a})

instance FromJSON GoogleTypeExpr where
        parseJSON
          = withObject "GoogleTypeExpr"
              (\ o ->
                 GoogleTypeExpr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON GoogleTypeExpr where
        toJSON GoogleTypeExpr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _gteLocation,
                  ("expression" .=) <$> _gteExpression,
                  ("title" .=) <$> _gteTitle,
                  ("description" .=) <$> _gteDescription])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone :: !(Maybe Bool)
    , _gloError :: !(Maybe GoogleRpcStatus)
    , _gloResponse :: !(Maybe GoogleLongrunningOperationResponse)
    , _gloName :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunningOperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gloDone'
--
-- * 'gloError'
--
-- * 'gloResponse'
--
-- * 'gloName'
--
-- * 'gloMetadata'
googleLongrunningOperation
    :: GoogleLongrunningOperation
googleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone = Nothing
    , _gloError = Nothing
    , _gloResponse = Nothing
    , _gloName = Nothing
    , _gloMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
gloDone :: Lens' GoogleLongrunningOperation (Maybe Bool)
gloDone = lens _gloDone (\ s a -> s{_gloDone = a})

-- | The error result of the operation in case of failure or cancellation.
gloError :: Lens' GoogleLongrunningOperation (Maybe GoogleRpcStatus)
gloError = lens _gloError (\ s a -> s{_gloError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
gloResponse :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationResponse)
gloResponse
  = lens _gloResponse (\ s a -> s{_gloResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
gloName :: Lens' GoogleLongrunningOperation (Maybe Text)
gloName = lens _gloName (\ s a -> s{_gloName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
gloMetadata :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationMetadata)
gloMetadata
  = lens _gloMetadata (\ s a -> s{_gloMetadata = a})

instance FromJSON GoogleLongrunningOperation where
        parseJSON
          = withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _gloDone,
                  ("error" .=) <$> _gloError,
                  ("response" .=) <$> _gloResponse,
                  ("name" .=) <$> _gloName,
                  ("metadata" .=) <$> _gloMetadata])

-- | The producer representation of a product which is a child resource of
-- \`Catalog\` with display metadata and a list of \`Version\` resources.
--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1Product' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Product =
  GoogleCloudPrivatecatalogproducerV1beta1Product'
    { _gcpvpIconURI :: !(Maybe Text)
    , _gcpvpUpdateTime :: !(Maybe DateTime')
    , _gcpvpDisplayMetadata :: !(Maybe GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata)
    , _gcpvpName :: !(Maybe Text)
    , _gcpvpAssetType :: !(Maybe Text)
    , _gcpvpCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvpIconURI'
--
-- * 'gcpvpUpdateTime'
--
-- * 'gcpvpDisplayMetadata'
--
-- * 'gcpvpName'
--
-- * 'gcpvpAssetType'
--
-- * 'gcpvpCreateTime'
googleCloudPrivatecatalogproducerV1beta1Product
    :: GoogleCloudPrivatecatalogproducerV1beta1Product
googleCloudPrivatecatalogproducerV1beta1Product =
  GoogleCloudPrivatecatalogproducerV1beta1Product'
    { _gcpvpIconURI = Nothing
    , _gcpvpUpdateTime = Nothing
    , _gcpvpDisplayMetadata = Nothing
    , _gcpvpName = Nothing
    , _gcpvpAssetType = Nothing
    , _gcpvpCreateTime = Nothing
    }


-- | Output only. The public accessible URI of the icon uploaded by
-- PrivateCatalogProducer.UploadIcon. If no icon is uploaded, it will be
-- the default icon\'s URI.
gcpvpIconURI :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Product (Maybe Text)
gcpvpIconURI
  = lens _gcpvpIconURI (\ s a -> s{_gcpvpIconURI = a})

-- | Output only. The time when the product was last updated.
gcpvpUpdateTime :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Product (Maybe UTCTime)
gcpvpUpdateTime
  = lens _gcpvpUpdateTime
      (\ s a -> s{_gcpvpUpdateTime = a})
      . mapping _DateTime

-- | The user-supplied display metadata to describe the product. The JSON
-- schema of the metadata differs by Product.asset_type. When the type is
-- \`google.deploymentmanager.Template\`, the schema is as follows: \`\`\`
-- \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object
-- properties: name: type: string minLength: 1 maxLength: 64 description:
-- type: string minLength: 1 maxLength: 2048 tagline: type: string
-- minLength: 1 maxLength: 100 support_info: type: string minLength: 1
-- maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 required: - name - description
-- additionalProperties: false \`\`\` When the asset type is
-- \`google.cloudprivatecatalog.ListingOnly\`, the schema is as follows:
-- \`\`\` \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type:
-- object properties: name: type: string minLength: 1 maxLength: 64
-- description: type: string minLength: 1 maxLength: 2048 tagline: type:
-- string minLength: 1 maxLength: 100 support_info: type: string minLength:
-- 1 maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 signup_url: type: string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- required: - name - description - signup_url additionalProperties: false
-- \`\`\`
gcpvpDisplayMetadata :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Product (Maybe GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata)
gcpvpDisplayMetadata
  = lens _gcpvpDisplayMetadata
      (\ s a -> s{_gcpvpDisplayMetadata = a})

-- | Required. The resource name of the product in the format
-- \`catalogs\/{catalog_id}\/products\/a-z*[a-z0-9]\'. A unique identifier
-- for the product under a catalog, which cannot be changed after the
-- product is created. The final segment of the name must between 1 and 256
-- characters in length.
gcpvpName :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Product (Maybe Text)
gcpvpName
  = lens _gcpvpName (\ s a -> s{_gcpvpName = a})

-- | Required. The type of the product asset, which cannot be changed after
-- the product is created. It supports the values
-- \`google.deploymentmanager.Template\` and
-- \`google.cloudprivatecatalog.ListingOnly\`. Other values will be
-- rejected by the server. Read only after creation. The following fields
-- or resource types have different validation rules under each
-- \`asset_type\` values: * Product.display_metadata has different
-- validation schema for each asset type value. See its comment for
-- details. * Version resource isn\'t allowed to be added under the
-- \`google.cloudprivatecatalog.ListingOnly\` type.
gcpvpAssetType :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Product (Maybe Text)
gcpvpAssetType
  = lens _gcpvpAssetType
      (\ s a -> s{_gcpvpAssetType = a})

-- | Output only. The time when the product was created.
gcpvpCreateTime :: Lens' GoogleCloudPrivatecatalogproducerV1beta1Product (Maybe UTCTime)
gcpvpCreateTime
  = lens _gcpvpCreateTime
      (\ s a -> s{_gcpvpCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1Product
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1Product"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1Product' <$>
                   (o .:? "iconUri") <*> (o .:? "updateTime") <*>
                     (o .:? "displayMetadata")
                     <*> (o .:? "name")
                     <*> (o .:? "assetType")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1Product
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1Product'{..}
          = object
              (catMaybes
                 [("iconUri" .=) <$> _gcpvpIconURI,
                  ("updateTime" .=) <$> _gcpvpUpdateTime,
                  ("displayMetadata" .=) <$> _gcpvpDisplayMetadata,
                  ("name" .=) <$> _gcpvpName,
                  ("assetType" .=) <$> _gcpvpAssetType,
                  ("createTime" .=) <$> _gcpvpCreateTime])

-- | The user-supplied asset payload. The maximum size of the payload is 2MB.
-- The JSON schema of the payload is defined as: \`\`\` type: object
-- properties: mainTemplate: type: string description: The file name of the
-- main template and name prefix of schema file. The content of the main
-- template should be set in the imports list. The schema file name is
-- expected to be .schema in the imports list. required: true imports:
-- type: array description: Import template and schema file contents.
-- Required to have both and .schema files. required: true minItems: 2
-- items: type: object properties: name: type: string content: type: string
-- \`\`\`
--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset =
  GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset'
    { _gcpvvoaAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvvoaAddtional'
googleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
    :: HashMap Text JSONValue -- ^ 'gcpvvoaAddtional'
    -> GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
googleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset pGcpvvoaAddtional_ =
  GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset'
    {_gcpvvoaAddtional = _Coerce # pGcpvvoaAddtional_}


-- | Properties of the object.
gcpvvoaAddtional :: Lens' GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset (HashMap Text JSONValue)
gcpvvoaAddtional
  = lens _gcpvvoaAddtional
      (\ s a -> s{_gcpvvoaAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
         where
        toJSON = toJSON . _gcpvvoaAddtional

--
-- /See:/ 'googleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse'
    { _gcpvlarNextPageToken :: !(Maybe Text)
    , _gcpvlarAssociations :: !(Maybe [GoogleCloudPrivatecatalogproducerV1beta1Association])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvlarNextPageToken'
--
-- * 'gcpvlarAssociations'
googleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    :: GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
googleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse'
    {_gcpvlarNextPageToken = Nothing, _gcpvlarAssociations = Nothing}


-- | A pagination token returned from a previous call to \`ListAssociations\`
-- that indicates where the listing should continue from. This field is
-- optional.
gcpvlarNextPageToken :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse (Maybe Text)
gcpvlarNextPageToken
  = lens _gcpvlarNextPageToken
      (\ s a -> s{_gcpvlarNextPageToken = a})

-- | The returned \`Association\` resources from the list call.
gcpvlarAssociations :: Lens' GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse [GoogleCloudPrivatecatalogproducerV1beta1Association]
gcpvlarAssociations
  = lens _gcpvlarAssociations
      (\ s a -> s{_gcpvlarAssociations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse"
              (\ o ->
                 GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "associations" .!= mempty))

instance ToJSON
           GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
         where
        toJSON
          GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcpvlarNextPageToken,
                  ("associations" .=) <$> _gcpvlarAssociations])
