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
    , proUserIP
    , proPayload
    , proKey
    , proFileId
    , proOAuthToken
    , proFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesInsert@ method which the
-- 'PropertiesInsert'' request conforms to.
type PropertiesInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Property :> Post '[JSON] Property

-- | Adds a property to a file.
--
-- /See:/ 'propertiesInsert'' smart constructor.
data PropertiesInsert' = PropertiesInsert'
    { _proQuotaUser   :: !(Maybe Text)
    , _proPrettyPrint :: !Bool
    , _proUserIP      :: !(Maybe Text)
    , _proPayload     :: !Property
    , _proKey         :: !(Maybe AuthKey)
    , _proFileId      :: !Text
    , _proOAuthToken  :: !(Maybe OAuthToken)
    , _proFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proQuotaUser'
--
-- * 'proPrettyPrint'
--
-- * 'proUserIP'
--
-- * 'proPayload'
--
-- * 'proKey'
--
-- * 'proFileId'
--
-- * 'proOAuthToken'
--
-- * 'proFields'
propertiesInsert'
    :: Property -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> PropertiesInsert'
propertiesInsert' pProPayload_ pProFileId_ =
    PropertiesInsert'
    { _proQuotaUser = Nothing
    , _proPrettyPrint = True
    , _proUserIP = Nothing
    , _proPayload = pProPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
proUserIP :: Lens' PropertiesInsert' (Maybe Text)
proUserIP
  = lens _proUserIP (\ s a -> s{_proUserIP = a})

-- | Multipart request metadata.
proPayload :: Lens' PropertiesInsert' Property
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' PropertiesInsert' (Maybe AuthKey)
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
        _AuthKey = proKey . _Just
        _AuthToken = proOAuthToken . _Just

instance GoogleRequest PropertiesInsert' where
        type Rs PropertiesInsert' = Property
        request = requestWith driveRequest
        requestWith rq PropertiesInsert'{..}
          = go _proFileId _proQuotaUser (Just _proPrettyPrint)
              _proUserIP
              _proFields
              _proKey
              _proOAuthToken
              (Just AltJSON)
              _proPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PropertiesInsertResource)
                      rq
