{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Storage.Objects.Rewrite
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Rewrites a source object to a destination object. Optionally overrides
-- metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectsRewrite@.
module Network.Google.Resource.Storage.Objects.Rewrite
    (
    -- * REST Resource
      ObjectsRewriteResource

    -- * Creating a Request
    , objectsRewrite'
    , ObjectsRewrite'

    -- * Request Lenses
    , orDestinationPredefinedACL
    , orQuotaUser
    , orIfSourceGenerationMatch
    , orIfMetagenerationMatch
    , orIfGenerationNotMatch
    , orPrettyPrint
    , orIfSourceMetagenerationNotMatch
    , orIfSourceMetagenerationMatch
    , orIfGenerationMatch
    , orUserIP
    , orSourceObject
    , orMaxBytesRewrittenPerCall
    , orSourceBucket
    , orPayload
    , orKey
    , orDestinationBucket
    , orIfMetagenerationNotMatch
    , orIfSourceGenerationNotMatch
    , orProjection
    , orOAuthToken
    , orSourceGeneration
    , orFields
    , orRewriteToken
    , orDestinationObject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsRewrite@ method which the
-- 'ObjectsRewrite'' request conforms to.
type ObjectsRewriteResource =
     "b" :>
       Capture "sourceBucket" Text :>
         "o" :>
           Capture "sourceObject" Text :>
             "rewriteTo" :>
               "b" :>
                 Capture "destinationBucket" Text :>
                   "o" :>
                     Capture "destinationObject" Text :>
                       QueryParam "destinationPredefinedAcl"
                         ObjectsRewriteDestinationPredefinedACL
                         :>
                         QueryParam "ifSourceGenerationMatch" Int64 :>
                           QueryParam "ifMetagenerationMatch" Int64 :>
                             QueryParam "ifGenerationNotMatch" Int64 :>
                               QueryParam "ifSourceMetagenerationNotMatch" Int64
                                 :>
                                 QueryParam "ifSourceMetagenerationMatch" Int64
                                   :>
                                   QueryParam "ifGenerationMatch" Int64 :>
                                     QueryParam "maxBytesRewrittenPerCall" Int64
                                       :>
                                       QueryParam "ifMetagenerationNotMatch"
                                         Int64
                                         :>
                                         QueryParam "ifSourceGenerationNotMatch"
                                           Int64
                                           :>
                                           QueryParam "projection"
                                             ObjectsRewriteProjection
                                             :>
                                             QueryParam "sourceGeneration" Int64
                                               :>
                                               QueryParam "rewriteToken" Text :>
                                                 QueryParam "quotaUser" Text :>
                                                   QueryParam "prettyPrint" Bool
                                                     :>
                                                     QueryParam "userIp" Text :>
                                                       QueryParam "fields" Text
                                                         :>
                                                         QueryParam "key"
                                                           AuthKey
                                                           :>
                                                           Header
                                                             "Authorization"
                                                             OAuthToken
                                                             :>
                                                             QueryParam "alt"
                                                               AltJSON
                                                               :>
                                                               ReqBody '[JSON]
                                                                 Object
                                                                 :>
                                                                 Post '[JSON]
                                                                   RewriteResponse

-- | Rewrites a source object to a destination object. Optionally overrides
-- metadata.
--
-- /See:/ 'objectsRewrite'' smart constructor.
data ObjectsRewrite' = ObjectsRewrite'
    { _orDestinationPredefinedACL       :: !(Maybe ObjectsRewriteDestinationPredefinedACL)
    , _orQuotaUser                      :: !(Maybe Text)
    , _orIfSourceGenerationMatch        :: !(Maybe Int64)
    , _orIfMetagenerationMatch          :: !(Maybe Int64)
    , _orIfGenerationNotMatch           :: !(Maybe Int64)
    , _orPrettyPrint                    :: !Bool
    , _orIfSourceMetagenerationNotMatch :: !(Maybe Int64)
    , _orIfSourceMetagenerationMatch    :: !(Maybe Int64)
    , _orIfGenerationMatch              :: !(Maybe Int64)
    , _orUserIP                         :: !(Maybe Text)
    , _orSourceObject                   :: !Text
    , _orMaxBytesRewrittenPerCall       :: !(Maybe Int64)
    , _orSourceBucket                   :: !Text
    , _orPayload                        :: !Object
    , _orKey                            :: !(Maybe AuthKey)
    , _orDestinationBucket              :: !Text
    , _orIfMetagenerationNotMatch       :: !(Maybe Int64)
    , _orIfSourceGenerationNotMatch     :: !(Maybe Int64)
    , _orProjection                     :: !(Maybe ObjectsRewriteProjection)
    , _orOAuthToken                     :: !(Maybe OAuthToken)
    , _orSourceGeneration               :: !(Maybe Int64)
    , _orFields                         :: !(Maybe Text)
    , _orRewriteToken                   :: !(Maybe Text)
    , _orDestinationObject              :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsRewrite'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orDestinationPredefinedACL'
--
-- * 'orQuotaUser'
--
-- * 'orIfSourceGenerationMatch'
--
-- * 'orIfMetagenerationMatch'
--
-- * 'orIfGenerationNotMatch'
--
-- * 'orPrettyPrint'
--
-- * 'orIfSourceMetagenerationNotMatch'
--
-- * 'orIfSourceMetagenerationMatch'
--
-- * 'orIfGenerationMatch'
--
-- * 'orUserIP'
--
-- * 'orSourceObject'
--
-- * 'orMaxBytesRewrittenPerCall'
--
-- * 'orSourceBucket'
--
-- * 'orPayload'
--
-- * 'orKey'
--
-- * 'orDestinationBucket'
--
-- * 'orIfMetagenerationNotMatch'
--
-- * 'orIfSourceGenerationNotMatch'
--
-- * 'orProjection'
--
-- * 'orOAuthToken'
--
-- * 'orSourceGeneration'
--
-- * 'orFields'
--
-- * 'orRewriteToken'
--
-- * 'orDestinationObject'
objectsRewrite'
    :: Text -- ^ 'sourceObject'
    -> Text -- ^ 'sourceBucket'
    -> Object -- ^ 'payload'
    -> Text -- ^ 'destinationBucket'
    -> Text -- ^ 'destinationObject'
    -> ObjectsRewrite'
objectsRewrite' pOrSourceObject_ pOrSourceBucket_ pOrPayload_ pOrDestinationBucket_ pOrDestinationObject_ =
    ObjectsRewrite'
    { _orDestinationPredefinedACL = Nothing
    , _orQuotaUser = Nothing
    , _orIfSourceGenerationMatch = Nothing
    , _orIfMetagenerationMatch = Nothing
    , _orIfGenerationNotMatch = Nothing
    , _orPrettyPrint = True
    , _orIfSourceMetagenerationNotMatch = Nothing
    , _orIfSourceMetagenerationMatch = Nothing
    , _orIfGenerationMatch = Nothing
    , _orUserIP = Nothing
    , _orSourceObject = pOrSourceObject_
    , _orMaxBytesRewrittenPerCall = Nothing
    , _orSourceBucket = pOrSourceBucket_
    , _orPayload = pOrPayload_
    , _orKey = Nothing
    , _orDestinationBucket = pOrDestinationBucket_
    , _orIfMetagenerationNotMatch = Nothing
    , _orIfSourceGenerationNotMatch = Nothing
    , _orProjection = Nothing
    , _orOAuthToken = Nothing
    , _orSourceGeneration = Nothing
    , _orFields = Nothing
    , _orRewriteToken = Nothing
    , _orDestinationObject = pOrDestinationObject_
    }

-- | Apply a predefined set of access controls to the destination object.
orDestinationPredefinedACL :: Lens' ObjectsRewrite' (Maybe ObjectsRewriteDestinationPredefinedACL)
orDestinationPredefinedACL
  = lens _orDestinationPredefinedACL
      (\ s a -> s{_orDestinationPredefinedACL = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
orQuotaUser :: Lens' ObjectsRewrite' (Maybe Text)
orQuotaUser
  = lens _orQuotaUser (\ s a -> s{_orQuotaUser = a})

-- | Makes the operation conditional on whether the source object\'s
-- generation matches the given value.
orIfSourceGenerationMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfSourceGenerationMatch
  = lens _orIfSourceGenerationMatch
      (\ s a -> s{_orIfSourceGenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration matches the given value.
orIfMetagenerationMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfMetagenerationMatch
  = lens _orIfMetagenerationMatch
      (\ s a -> s{_orIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current generation does not match the given value.
orIfGenerationNotMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfGenerationNotMatch
  = lens _orIfGenerationNotMatch
      (\ s a -> s{_orIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
orPrettyPrint :: Lens' ObjectsRewrite' Bool
orPrettyPrint
  = lens _orPrettyPrint
      (\ s a -> s{_orPrettyPrint = a})

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration does not match the given value.
orIfSourceMetagenerationNotMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfSourceMetagenerationNotMatch
  = lens _orIfSourceMetagenerationNotMatch
      (\ s a -> s{_orIfSourceMetagenerationNotMatch = a})

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration matches the given value.
orIfSourceMetagenerationMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfSourceMetagenerationMatch
  = lens _orIfSourceMetagenerationMatch
      (\ s a -> s{_orIfSourceMetagenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current generation matches the given value.
orIfGenerationMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfGenerationMatch
  = lens _orIfGenerationMatch
      (\ s a -> s{_orIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
orUserIP :: Lens' ObjectsRewrite' (Maybe Text)
orUserIP = lens _orUserIP (\ s a -> s{_orUserIP = a})

-- | Name of the source object. For information about how to URL encode
-- object names to be path safe, see Encoding URI Path Parts.
orSourceObject :: Lens' ObjectsRewrite' Text
orSourceObject
  = lens _orSourceObject
      (\ s a -> s{_orSourceObject = a})

-- | The maximum number of bytes that will be rewritten per rewrite request.
-- Most callers shouldn\'t need to specify this parameter - it is primarily
-- in place to support testing. If specified the value must be an integral
-- multiple of 1 MiB (1048576). Also, this only applies to requests where
-- the source and destination span locations and\/or storage classes.
-- Finally, this value must not change across rewrite calls else you\'ll
-- get an error that the rewriteToken is invalid.
orMaxBytesRewrittenPerCall :: Lens' ObjectsRewrite' (Maybe Int64)
orMaxBytesRewrittenPerCall
  = lens _orMaxBytesRewrittenPerCall
      (\ s a -> s{_orMaxBytesRewrittenPerCall = a})

-- | Name of the bucket in which to find the source object.
orSourceBucket :: Lens' ObjectsRewrite' Text
orSourceBucket
  = lens _orSourceBucket
      (\ s a -> s{_orSourceBucket = a})

-- | Multipart request metadata.
orPayload :: Lens' ObjectsRewrite' Object
orPayload
  = lens _orPayload (\ s a -> s{_orPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
orKey :: Lens' ObjectsRewrite' (Maybe AuthKey)
orKey = lens _orKey (\ s a -> s{_orKey = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.
orDestinationBucket :: Lens' ObjectsRewrite' Text
orDestinationBucket
  = lens _orDestinationBucket
      (\ s a -> s{_orDestinationBucket = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration does not match the given value.
orIfMetagenerationNotMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfMetagenerationNotMatch
  = lens _orIfMetagenerationNotMatch
      (\ s a -> s{_orIfMetagenerationNotMatch = a})

-- | Makes the operation conditional on whether the source object\'s
-- generation does not match the given value.
orIfSourceGenerationNotMatch :: Lens' ObjectsRewrite' (Maybe Int64)
orIfSourceGenerationNotMatch
  = lens _orIfSourceGenerationNotMatch
      (\ s a -> s{_orIfSourceGenerationNotMatch = a})

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
orProjection :: Lens' ObjectsRewrite' (Maybe ObjectsRewriteProjection)
orProjection
  = lens _orProjection (\ s a -> s{_orProjection = a})

-- | OAuth 2.0 token for the current user.
orOAuthToken :: Lens' ObjectsRewrite' (Maybe OAuthToken)
orOAuthToken
  = lens _orOAuthToken (\ s a -> s{_orOAuthToken = a})

-- | If present, selects a specific revision of the source object (as opposed
-- to the latest version, the default).
orSourceGeneration :: Lens' ObjectsRewrite' (Maybe Int64)
orSourceGeneration
  = lens _orSourceGeneration
      (\ s a -> s{_orSourceGeneration = a})

-- | Selector specifying which fields to include in a partial response.
orFields :: Lens' ObjectsRewrite' (Maybe Text)
orFields = lens _orFields (\ s a -> s{_orFields = a})

-- | Include this field (from the previous rewrite response) on each rewrite
-- request after the first one, until the rewrite response \'done\' flag is
-- true. Calls that provide a rewriteToken can omit all other request
-- fields, but if included those fields must match the values provided in
-- the first rewrite request.
orRewriteToken :: Lens' ObjectsRewrite' (Maybe Text)
orRewriteToken
  = lens _orRewriteToken
      (\ s a -> s{_orRewriteToken = a})

-- | Name of the new object. Required when the object metadata is not
-- otherwise provided. Overrides the object metadata\'s name value, if any.
-- For information about how to URL encode object names to be path safe,
-- see Encoding URI Path Parts.
orDestinationObject :: Lens' ObjectsRewrite' Text
orDestinationObject
  = lens _orDestinationObject
      (\ s a -> s{_orDestinationObject = a})

instance GoogleAuth ObjectsRewrite' where
        _AuthKey = orKey . _Just
        _AuthToken = orOAuthToken . _Just

instance GoogleRequest ObjectsRewrite' where
        type Rs ObjectsRewrite' = RewriteResponse
        request = requestWith storageRequest
        requestWith rq ObjectsRewrite'{..}
          = go _orSourceBucket _orSourceObject
              _orDestinationBucket
              _orDestinationObject
              _orDestinationPredefinedACL
              _orIfSourceGenerationMatch
              _orIfMetagenerationMatch
              _orIfGenerationNotMatch
              _orIfSourceMetagenerationNotMatch
              _orIfSourceMetagenerationMatch
              _orIfGenerationMatch
              _orMaxBytesRewrittenPerCall
              _orIfMetagenerationNotMatch
              _orIfSourceGenerationNotMatch
              _orProjection
              _orSourceGeneration
              _orRewriteToken
              _orQuotaUser
              (Just _orPrettyPrint)
              _orUserIP
              _orFields
              _orKey
              _orOAuthToken
              (Just AltJSON)
              _orPayload
          where go
                  = clientBuild (Proxy :: Proxy ObjectsRewriteResource)
                      rq
