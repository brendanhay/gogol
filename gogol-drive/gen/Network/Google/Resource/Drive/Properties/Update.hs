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
-- Module      : Network.Google.Resource.Drive.Properties.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesUpdate@.
module Network.Google.Resource.Drive.Properties.Update
    (
    -- * REST Resource
      PropertiesUpdateResource

    -- * Creating a Request
    , propertiesUpdate'
    , PropertiesUpdate'

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puPropertyKey
    , puUserIp
    , puVisibility
    , puKey
    , puFileId
    , puOauthToken
    , puFields
    , puAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesUpdate@ which the
-- 'PropertiesUpdate'' request conforms to.
type PropertiesUpdateResource =
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
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puPropertyKey :: !Text
    , _puUserIp      :: !(Maybe Text)
    , _puVisibility  :: !Text
    , _puKey         :: !(Maybe Text)
    , _puFileId      :: !Text
    , _puOauthToken  :: !(Maybe Text)
    , _puFields      :: !(Maybe Text)
    , _puAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puPropertyKey'
--
-- * 'puUserIp'
--
-- * 'puVisibility'
--
-- * 'puKey'
--
-- * 'puFileId'
--
-- * 'puOauthToken'
--
-- * 'puFields'
--
-- * 'puAlt'
propertiesUpdate'
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesUpdate'
propertiesUpdate' pPuPropertyKey_ pPuFileId_ =
    PropertiesUpdate'
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puPropertyKey = pPuPropertyKey_
    , _puUserIp = Nothing
    , _puVisibility = "private"
    , _puKey = Nothing
    , _puFileId = pPuFileId_
    , _puOauthToken = Nothing
    , _puFields = Nothing
    , _puAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PropertiesUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PropertiesUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | The key of the property.
puPropertyKey :: Lens' PropertiesUpdate' Text
puPropertyKey
  = lens _puPropertyKey
      (\ s a -> s{_puPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIp :: Lens' PropertiesUpdate' (Maybe Text)
puUserIp = lens _puUserIp (\ s a -> s{_puUserIp = a})

-- | The visibility of the property.
puVisibility :: Lens' PropertiesUpdate' Text
puVisibility
  = lens _puVisibility (\ s a -> s{_puVisibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PropertiesUpdate' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | The ID of the file.
puFileId :: Lens' PropertiesUpdate' Text
puFileId = lens _puFileId (\ s a -> s{_puFileId = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' PropertiesUpdate' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PropertiesUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | Data format for the response.
puAlt :: Lens' PropertiesUpdate' Alt
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest PropertiesUpdate' where
        type Rs PropertiesUpdate' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesUpdate'{..}
          = go _puQuotaUser (Just _puPrettyPrint)
              _puPropertyKey
              _puUserIp
              (Just _puVisibility)
              _puKey
              _puFileId
              _puOauthToken
              _puFields
              (Just _puAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesUpdateResource)
                      r
                      u
