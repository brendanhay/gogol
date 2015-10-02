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
-- Module      : Network.Google.Resource.Drive.Properties.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a property to a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesInsert@.
module Network.Google.Resource.Drive.Properties.Insert
    (
    -- * REST Resource
      PropertiesInsertResource

    -- * Creating a Request
    , propertiesInsert'
    , PropertiesInsert'

    -- * Request Lenses
    , proQuotaUser
    , proPrettyPrint
    , proProperty
    , proUserIP
    , proKey
    , proFileId
    , proOAuthToken
    , proFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesInsert@ which the
-- 'PropertiesInsert'' request conforms to.
type PropertiesInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Property :> Post '[JSON] Property

-- | Adds a property to a file.
--
-- /See:/ 'propertiesInsert'' smart constructor.
data PropertiesInsert' = PropertiesInsert'
    { _proQuotaUser   :: !(Maybe Text)
    , _proPrettyPrint :: !Bool
    , _proProperty    :: !Property
    , _proUserIP      :: !(Maybe Text)
    , _proKey         :: !(Maybe Key)
    , _proFileId      :: !Text
    , _proOAuthToken  :: !(Maybe OAuthToken)
    , _proFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proQuotaUser'
--
-- * 'proPrettyPrint'
--
-- * 'proProperty'
--
-- * 'proUserIP'
--
-- * 'proKey'
--
-- * 'proFileId'
--
-- * 'proOAuthToken'
--
-- * 'proFields'
propertiesInsert'
    :: Property -- ^ 'Property'
    -> Text -- ^ 'fileId'
    -> PropertiesInsert'
propertiesInsert' pProProperty_ pProFileId_ =
    PropertiesInsert'
    { _proQuotaUser = Nothing
    , _proPrettyPrint = True
    , _proProperty = pProProperty_
    , _proUserIP = Nothing
    , _proKey = Nothing
    , _proFileId = pProFileId_
    , _proOAuthToken = Nothing
    , _proFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
proQuotaUser :: Lens' PropertiesInsert' (Maybe Text)
proQuotaUser
  = lens _proQuotaUser (\ s a -> s{_proQuotaUser = a})

-- | Returns response with indentations and line breaks.
proPrettyPrint :: Lens' PropertiesInsert' Bool
proPrettyPrint
  = lens _proPrettyPrint
      (\ s a -> s{_proPrettyPrint = a})

-- | Multipart request metadata.
proProperty :: Lens' PropertiesInsert' Property
proProperty
  = lens _proProperty (\ s a -> s{_proProperty = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
proUserIP :: Lens' PropertiesInsert' (Maybe Text)
proUserIP
  = lens _proUserIP (\ s a -> s{_proUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' PropertiesInsert' (Maybe Key)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | The ID of the file.
proFileId :: Lens' PropertiesInsert' Text
proFileId
  = lens _proFileId (\ s a -> s{_proFileId = a})

-- | OAuth 2.0 token for the current user.
proOAuthToken :: Lens' PropertiesInsert' (Maybe OAuthToken)
proOAuthToken
  = lens _proOAuthToken
      (\ s a -> s{_proOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' PropertiesInsert' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

instance GoogleAuth PropertiesInsert' where
        authKey = proKey . _Just
        authToken = proOAuthToken . _Just

instance GoogleRequest PropertiesInsert' where
        type Rs PropertiesInsert' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesInsert'{..}
          = go _proQuotaUser (Just _proPrettyPrint) _proUserIP
              _proKey
              _proFileId
              _proOAuthToken
              _proFields
              (Just AltJSON)
              _proProperty
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesInsertResource)
                      r
                      u
