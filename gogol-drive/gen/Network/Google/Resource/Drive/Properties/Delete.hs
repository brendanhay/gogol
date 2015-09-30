{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Properties.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesDelete@.
module Drive.Properties.Delete
    (
    -- * REST Resource
      PropertiesDeleteAPI

    -- * Creating a Request
    , propertiesDelete
    , PropertiesDelete

    -- * Request Lenses
    , pd1QuotaUser
    , pd1PrettyPrint
    , pd1PropertyKey
    , pd1UserIp
    , pd1Visibility
    , pd1Key
    , pd1FileId
    , pd1OauthToken
    , pd1Fields
    , pd1Alt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesDelete@ which the
-- 'PropertiesDelete' request conforms to.
type PropertiesDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "visibility" Text :> Delete '[JSON] ()

-- | Deletes a property.
--
-- /See:/ 'propertiesDelete' smart constructor.
data PropertiesDelete = PropertiesDelete
    { _pd1QuotaUser   :: !(Maybe Text)
    , _pd1PrettyPrint :: !Bool
    , _pd1PropertyKey :: !Text
    , _pd1UserIp      :: !(Maybe Text)
    , _pd1Visibility  :: !Text
    , _pd1Key         :: !(Maybe Text)
    , _pd1FileId      :: !Text
    , _pd1OauthToken  :: !(Maybe Text)
    , _pd1Fields      :: !(Maybe Text)
    , _pd1Alt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pd1QuotaUser'
--
-- * 'pd1PrettyPrint'
--
-- * 'pd1PropertyKey'
--
-- * 'pd1UserIp'
--
-- * 'pd1Visibility'
--
-- * 'pd1Key'
--
-- * 'pd1FileId'
--
-- * 'pd1OauthToken'
--
-- * 'pd1Fields'
--
-- * 'pd1Alt'
propertiesDelete
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesDelete
propertiesDelete pPd1PropertyKey_ pPd1FileId_ =
    PropertiesDelete
    { _pd1QuotaUser = Nothing
    , _pd1PrettyPrint = True
    , _pd1PropertyKey = pPd1PropertyKey_
    , _pd1UserIp = Nothing
    , _pd1Visibility = "private"
    , _pd1Key = Nothing
    , _pd1FileId = pPd1FileId_
    , _pd1OauthToken = Nothing
    , _pd1Fields = Nothing
    , _pd1Alt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pd1QuotaUser :: Lens' PropertiesDelete' (Maybe Text)
pd1QuotaUser
  = lens _pd1QuotaUser (\ s a -> s{_pd1QuotaUser = a})

-- | Returns response with indentations and line breaks.
pd1PrettyPrint :: Lens' PropertiesDelete' Bool
pd1PrettyPrint
  = lens _pd1PrettyPrint
      (\ s a -> s{_pd1PrettyPrint = a})

-- | The key of the property.
pd1PropertyKey :: Lens' PropertiesDelete' Text
pd1PropertyKey
  = lens _pd1PropertyKey
      (\ s a -> s{_pd1PropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pd1UserIp :: Lens' PropertiesDelete' (Maybe Text)
pd1UserIp
  = lens _pd1UserIp (\ s a -> s{_pd1UserIp = a})

-- | The visibility of the property.
pd1Visibility :: Lens' PropertiesDelete' Text
pd1Visibility
  = lens _pd1Visibility
      (\ s a -> s{_pd1Visibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pd1Key :: Lens' PropertiesDelete' (Maybe Text)
pd1Key = lens _pd1Key (\ s a -> s{_pd1Key = a})

-- | The ID of the file.
pd1FileId :: Lens' PropertiesDelete' Text
pd1FileId
  = lens _pd1FileId (\ s a -> s{_pd1FileId = a})

-- | OAuth 2.0 token for the current user.
pd1OauthToken :: Lens' PropertiesDelete' (Maybe Text)
pd1OauthToken
  = lens _pd1OauthToken
      (\ s a -> s{_pd1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pd1Fields :: Lens' PropertiesDelete' (Maybe Text)
pd1Fields
  = lens _pd1Fields (\ s a -> s{_pd1Fields = a})

-- | Data format for the response.
pd1Alt :: Lens' PropertiesDelete' Text
pd1Alt = lens _pd1Alt (\ s a -> s{_pd1Alt = a})

instance GoogleRequest PropertiesDelete' where
        type Rs PropertiesDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesDelete{..}
          = go _pd1QuotaUser _pd1PrettyPrint _pd1PropertyKey
              _pd1UserIp
              (Just _pd1Visibility)
              _pd1Key
              _pd1FileId
              _pd1OauthToken
              _pd1Fields
              _pd1Alt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesDeleteAPI)
                      r
                      u
