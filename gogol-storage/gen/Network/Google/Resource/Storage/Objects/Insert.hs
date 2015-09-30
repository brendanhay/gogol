{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.Objects.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stores new data blobs and associated metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsInsert@.
module Network.Google.Resource.Storage.Objects.Insert
    (
    -- * REST Resource
      ObjectsInsertResource

    -- * Creating a Request
    , objectsInsert'
    , ObjectsInsert'

    -- * Request Lenses
    , oiQuotaUser
    , oiIfMetagenerationMatch
    , oiIfGenerationNotMatch
    , oiPrettyPrint
    , oiIfGenerationMatch
    , oiUserIp
    , oiBucket
    , oiKey
    , oiName
    , oiIfMetagenerationNotMatch
    , oiProjection
    , oiOauthToken
    , oiFields
    , oiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsInsert@ which the
-- 'ObjectsInsert'' request conforms to.
type ObjectsInsertResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           QueryParam "quotaUser" Text :>
             QueryParam "ifMetagenerationMatch" Word64 :>
               QueryParam "ifGenerationNotMatch" Word64 :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "ifGenerationMatch" Word64 :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "name" Text :>
                           QueryParam "ifMetagenerationNotMatch" Word64 :>
                             QueryParam "projection"
                               StorageObjectsInsertProjection
                               :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Post '[JSON] Object

-- | Stores new data blobs and associated metadata.
--
-- /See:/ 'objectsInsert'' smart constructor.
data ObjectsInsert' = ObjectsInsert'
    { _oiQuotaUser                :: !(Maybe Text)
    , _oiIfMetagenerationMatch    :: !(Maybe Word64)
    , _oiIfGenerationNotMatch     :: !(Maybe Word64)
    , _oiPrettyPrint              :: !Bool
    , _oiIfGenerationMatch        :: !(Maybe Word64)
    , _oiUserIp                   :: !(Maybe Text)
    , _oiBucket                   :: !Text
    , _oiKey                      :: !(Maybe Text)
    , _oiName                     :: !(Maybe Text)
    , _oiIfMetagenerationNotMatch :: !(Maybe Word64)
    , _oiProjection               :: !(Maybe StorageObjectsInsertProjection)
    , _oiOauthToken               :: !(Maybe Text)
    , _oiFields                   :: !(Maybe Text)
    , _oiAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiQuotaUser'
--
-- * 'oiIfMetagenerationMatch'
--
-- * 'oiIfGenerationNotMatch'
--
-- * 'oiPrettyPrint'
--
-- * 'oiIfGenerationMatch'
--
-- * 'oiUserIp'
--
-- * 'oiBucket'
--
-- * 'oiKey'
--
-- * 'oiName'
--
-- * 'oiIfMetagenerationNotMatch'
--
-- * 'oiProjection'
--
-- * 'oiOauthToken'
--
-- * 'oiFields'
--
-- * 'oiAlt'
objectsInsert'
    :: Text -- ^ 'bucket'
    -> ObjectsInsert'
objectsInsert' pOiBucket_ =
    ObjectsInsert'
    { _oiQuotaUser = Nothing
    , _oiIfMetagenerationMatch = Nothing
    , _oiIfGenerationNotMatch = Nothing
    , _oiPrettyPrint = True
    , _oiIfGenerationMatch = Nothing
    , _oiUserIp = Nothing
    , _oiBucket = pOiBucket_
    , _oiKey = Nothing
    , _oiName = Nothing
    , _oiIfMetagenerationNotMatch = Nothing
    , _oiProjection = Nothing
    , _oiOauthToken = Nothing
    , _oiFields = Nothing
    , _oiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oiQuotaUser :: Lens' ObjectsInsert' (Maybe Text)
oiQuotaUser
  = lens _oiQuotaUser (\ s a -> s{_oiQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
oiIfMetagenerationMatch :: Lens' ObjectsInsert' (Maybe Word64)
oiIfMetagenerationMatch
  = lens _oiIfMetagenerationMatch
      (\ s a -> s{_oiIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
oiIfGenerationNotMatch :: Lens' ObjectsInsert' (Maybe Word64)
oiIfGenerationNotMatch
  = lens _oiIfGenerationNotMatch
      (\ s a -> s{_oiIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
oiPrettyPrint :: Lens' ObjectsInsert' Bool
oiPrettyPrint
  = lens _oiPrettyPrint
      (\ s a -> s{_oiPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
oiIfGenerationMatch :: Lens' ObjectsInsert' (Maybe Word64)
oiIfGenerationMatch
  = lens _oiIfGenerationMatch
      (\ s a -> s{_oiIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oiUserIp :: Lens' ObjectsInsert' (Maybe Text)
oiUserIp = lens _oiUserIp (\ s a -> s{_oiUserIp = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.
oiBucket :: Lens' ObjectsInsert' Text
oiBucket = lens _oiBucket (\ s a -> s{_oiBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oiKey :: Lens' ObjectsInsert' (Maybe Text)
oiKey = lens _oiKey (\ s a -> s{_oiKey = a})

-- | Name of the object. Required when the object metadata is not otherwise
-- provided. Overrides the object metadata\'s name value, if any.
oiName :: Lens' ObjectsInsert' (Maybe Text)
oiName = lens _oiName (\ s a -> s{_oiName = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
oiIfMetagenerationNotMatch :: Lens' ObjectsInsert' (Maybe Word64)
oiIfMetagenerationNotMatch
  = lens _oiIfMetagenerationNotMatch
      (\ s a -> s{_oiIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
oiProjection :: Lens' ObjectsInsert' (Maybe StorageObjectsInsertProjection)
oiProjection
  = lens _oiProjection (\ s a -> s{_oiProjection = a})

-- | OAuth 2.0 token for the current user.
oiOauthToken :: Lens' ObjectsInsert' (Maybe Text)
oiOauthToken
  = lens _oiOauthToken (\ s a -> s{_oiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oiFields :: Lens' ObjectsInsert' (Maybe Text)
oiFields = lens _oiFields (\ s a -> s{_oiFields = a})

-- | Data format for the response.
oiAlt :: Lens' ObjectsInsert' Alt
oiAlt = lens _oiAlt (\ s a -> s{_oiAlt = a})

instance GoogleRequest ObjectsInsert' where
        type Rs ObjectsInsert' = Object
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsInsert'{..}
          = go _oiQuotaUser _oiIfMetagenerationMatch
              _oiIfGenerationNotMatch
              (Just _oiPrettyPrint)
              _oiIfGenerationMatch
              _oiUserIp
              _oiBucket
              _oiKey
              _oiName
              _oiIfMetagenerationNotMatch
              _oiProjection
              _oiOauthToken
              _oiFields
              (Just _oiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsInsertResource)
                      r
                      u
