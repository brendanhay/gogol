{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Properties.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.update@.
module Network.Google.API.Drive.Properties.Update
    (
    -- * REST Resource
      PropertiesUpdateAPI

    -- * Creating a Request
    , propertiesUpdate'
    , PropertiesUpdate'

    -- * Request Lenses
    , puuQuotaUser
    , puuPrettyPrint
    , puuPropertyKey
    , puuUserIp
    , puuVisibility
    , puuKey
    , puuFileId
    , puuOauthToken
    , puuFields
    , puuAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.properties.update which the
-- 'PropertiesUpdate'' request conforms to.
type PropertiesUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "visibility" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] Property

-- | Updates a property.
--
-- /See:/ 'propertiesUpdate'' smart constructor.
data PropertiesUpdate' = PropertiesUpdate'
    { _puuQuotaUser   :: !(Maybe Text)
    , _puuPrettyPrint :: !Bool
    , _puuPropertyKey :: !Text
    , _puuUserIp      :: !(Maybe Text)
    , _puuVisibility  :: !Text
    , _puuKey         :: !(Maybe Text)
    , _puuFileId      :: !Text
    , _puuOauthToken  :: !(Maybe Text)
    , _puuFields      :: !(Maybe Text)
    , _puuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuQuotaUser'
--
-- * 'puuPrettyPrint'
--
-- * 'puuPropertyKey'
--
-- * 'puuUserIp'
--
-- * 'puuVisibility'
--
-- * 'puuKey'
--
-- * 'puuFileId'
--
-- * 'puuOauthToken'
--
-- * 'puuFields'
--
-- * 'puuAlt'
propertiesUpdate'
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesUpdate'
propertiesUpdate' pPuuPropertyKey_ pPuuFileId_ =
    PropertiesUpdate'
    { _puuQuotaUser = Nothing
    , _puuPrettyPrint = True
    , _puuPropertyKey = pPuuPropertyKey_
    , _puuUserIp = Nothing
    , _puuVisibility = "private"
    , _puuKey = Nothing
    , _puuFileId = pPuuFileId_
    , _puuOauthToken = Nothing
    , _puuFields = Nothing
    , _puuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puuQuotaUser :: Lens' PropertiesUpdate' (Maybe Text)
puuQuotaUser
  = lens _puuQuotaUser (\ s a -> s{_puuQuotaUser = a})

-- | Returns response with indentations and line breaks.
puuPrettyPrint :: Lens' PropertiesUpdate' Bool
puuPrettyPrint
  = lens _puuPrettyPrint
      (\ s a -> s{_puuPrettyPrint = a})

-- | The key of the property.
puuPropertyKey :: Lens' PropertiesUpdate' Text
puuPropertyKey
  = lens _puuPropertyKey
      (\ s a -> s{_puuPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puuUserIp :: Lens' PropertiesUpdate' (Maybe Text)
puuUserIp
  = lens _puuUserIp (\ s a -> s{_puuUserIp = a})

-- | The visibility of the property.
puuVisibility :: Lens' PropertiesUpdate' Text
puuVisibility
  = lens _puuVisibility
      (\ s a -> s{_puuVisibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puuKey :: Lens' PropertiesUpdate' (Maybe Text)
puuKey = lens _puuKey (\ s a -> s{_puuKey = a})

-- | The ID of the file.
puuFileId :: Lens' PropertiesUpdate' Text
puuFileId
  = lens _puuFileId (\ s a -> s{_puuFileId = a})

-- | OAuth 2.0 token for the current user.
puuOauthToken :: Lens' PropertiesUpdate' (Maybe Text)
puuOauthToken
  = lens _puuOauthToken
      (\ s a -> s{_puuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puuFields :: Lens' PropertiesUpdate' (Maybe Text)
puuFields
  = lens _puuFields (\ s a -> s{_puuFields = a})

-- | Data format for the response.
puuAlt :: Lens' PropertiesUpdate' Alt
puuAlt = lens _puuAlt (\ s a -> s{_puuAlt = a})

instance GoogleRequest PropertiesUpdate' where
        type Rs PropertiesUpdate' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesUpdate'{..}
          = go _puuQuotaUser (Just _puuPrettyPrint)
              _puuPropertyKey
              _puuUserIp
              (Just _puuVisibility)
              _puuKey
              _puuFileId
              _puuOauthToken
              _puuFields
              (Just _puuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesUpdateAPI)
                      r
                      u
