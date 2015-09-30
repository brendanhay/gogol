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
-- Module      : Network.Google.Resource.Storage.Objects.Compose
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Concatenates a list of existing objects into a new object in the same
-- bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsCompose@.
module Network.Google.Resource.Storage.Objects.Compose
    (
    -- * REST Resource
      ObjectsComposeResource

    -- * Creating a Request
    , objectsCompose'
    , ObjectsCompose'

    -- * Request Lenses
    , oQuotaUser
    , oIfMetagenerationMatch
    , oPrettyPrint
    , oIfGenerationMatch
    , oUserIp
    , oKey
    , oDestinationBucket
    , oOauthToken
    , oFields
    , oAlt
    , oDestinationObject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsCompose@ which the
-- 'ObjectsCompose'' request conforms to.
type ObjectsComposeResource =
     "b" :>
       Capture "destinationBucket" Text :>
         "o" :>
           Capture "destinationObject" Text :>
             "compose" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "ifMetagenerationMatch" Word64 :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "ifGenerationMatch" Word64 :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] Object

-- | Concatenates a list of existing objects into a new object in the same
-- bucket.
--
-- /See:/ 'objectsCompose'' smart constructor.
data ObjectsCompose' = ObjectsCompose'
    { _oQuotaUser             :: !(Maybe Text)
    , _oIfMetagenerationMatch :: !(Maybe Word64)
    , _oPrettyPrint           :: !Bool
    , _oIfGenerationMatch     :: !(Maybe Word64)
    , _oUserIp                :: !(Maybe Text)
    , _oKey                   :: !(Maybe Text)
    , _oDestinationBucket     :: !Text
    , _oOauthToken            :: !(Maybe Text)
    , _oFields                :: !(Maybe Text)
    , _oAlt                   :: !Alt
    , _oDestinationObject     :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsCompose'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oQuotaUser'
--
-- * 'oIfMetagenerationMatch'
--
-- * 'oPrettyPrint'
--
-- * 'oIfGenerationMatch'
--
-- * 'oUserIp'
--
-- * 'oKey'
--
-- * 'oDestinationBucket'
--
-- * 'oOauthToken'
--
-- * 'oFields'
--
-- * 'oAlt'
--
-- * 'oDestinationObject'
objectsCompose'
    :: Text -- ^ 'destinationBucket'
    -> Text -- ^ 'destinationObject'
    -> ObjectsCompose'
objectsCompose' pODestinationBucket_ pODestinationObject_ =
    ObjectsCompose'
    { _oQuotaUser = Nothing
    , _oIfMetagenerationMatch = Nothing
    , _oPrettyPrint = True
    , _oIfGenerationMatch = Nothing
    , _oUserIp = Nothing
    , _oKey = Nothing
    , _oDestinationBucket = pODestinationBucket_
    , _oOauthToken = Nothing
    , _oFields = Nothing
    , _oAlt = JSON
    , _oDestinationObject = pODestinationObject_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oQuotaUser :: Lens' ObjectsCompose' (Maybe Text)
oQuotaUser
  = lens _oQuotaUser (\ s a -> s{_oQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
oIfMetagenerationMatch :: Lens' ObjectsCompose' (Maybe Word64)
oIfMetagenerationMatch
  = lens _oIfMetagenerationMatch
      (\ s a -> s{_oIfMetagenerationMatch = a})

-- | Returns response with indentations and line breaks.
oPrettyPrint :: Lens' ObjectsCompose' Bool
oPrettyPrint
  = lens _oPrettyPrint (\ s a -> s{_oPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
oIfGenerationMatch :: Lens' ObjectsCompose' (Maybe Word64)
oIfGenerationMatch
  = lens _oIfGenerationMatch
      (\ s a -> s{_oIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oUserIp :: Lens' ObjectsCompose' (Maybe Text)
oUserIp = lens _oUserIp (\ s a -> s{_oUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oKey :: Lens' ObjectsCompose' (Maybe Text)
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | Name of the bucket in which to store the new object.
oDestinationBucket :: Lens' ObjectsCompose' Text
oDestinationBucket
  = lens _oDestinationBucket
      (\ s a -> s{_oDestinationBucket = a})

-- | OAuth 2.0 token for the current user.
oOauthToken :: Lens' ObjectsCompose' (Maybe Text)
oOauthToken
  = lens _oOauthToken (\ s a -> s{_oOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oFields :: Lens' ObjectsCompose' (Maybe Text)
oFields = lens _oFields (\ s a -> s{_oFields = a})

-- | Data format for the response.
oAlt :: Lens' ObjectsCompose' Alt
oAlt = lens _oAlt (\ s a -> s{_oAlt = a})

-- | Name of the new object.
oDestinationObject :: Lens' ObjectsCompose' Text
oDestinationObject
  = lens _oDestinationObject
      (\ s a -> s{_oDestinationObject = a})

instance GoogleRequest ObjectsCompose' where
        type Rs ObjectsCompose' = Object
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsCompose'{..}
          = go _oQuotaUser _oIfMetagenerationMatch
              (Just _oPrettyPrint)
              _oIfGenerationMatch
              _oUserIp
              _oKey
              _oDestinationBucket
              _oOauthToken
              _oFields
              (Just _oAlt)
              _oDestinationObject
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsComposeResource)
                      r
                      u
