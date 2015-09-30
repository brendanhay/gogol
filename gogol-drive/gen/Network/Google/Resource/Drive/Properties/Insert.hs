{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Drive.Properties.Insert
    (
    -- * REST Resource
      PropertiesInsertAPI

    -- * Creating a Request
    , propertiesInsert
    , PropertiesInsert

    -- * Request Lenses
    , proQuotaUser
    , proPrettyPrint
    , proUserIp
    , proKey
    , proFileId
    , proOauthToken
    , proFields
    , proAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesInsert@ which the
-- 'PropertiesInsert' request conforms to.
type PropertiesInsertAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :> Post '[JSON] Property

-- | Adds a property to a file.
--
-- /See:/ 'propertiesInsert' smart constructor.
data PropertiesInsert = PropertiesInsert
    { _proQuotaUser   :: !(Maybe Text)
    , _proPrettyPrint :: !Bool
    , _proUserIp      :: !(Maybe Text)
    , _proKey         :: !(Maybe Text)
    , _proFileId      :: !Text
    , _proOauthToken  :: !(Maybe Text)
    , _proFields      :: !(Maybe Text)
    , _proAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proQuotaUser'
--
-- * 'proPrettyPrint'
--
-- * 'proUserIp'
--
-- * 'proKey'
--
-- * 'proFileId'
--
-- * 'proOauthToken'
--
-- * 'proFields'
--
-- * 'proAlt'
propertiesInsert
    :: Text -- ^ 'fileId'
    -> PropertiesInsert
propertiesInsert pProFileId_ =
    PropertiesInsert
    { _proQuotaUser = Nothing
    , _proPrettyPrint = True
    , _proUserIp = Nothing
    , _proKey = Nothing
    , _proFileId = pProFileId_
    , _proOauthToken = Nothing
    , _proFields = Nothing
    , _proAlt = "json"
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
proUserIp :: Lens' PropertiesInsert' (Maybe Text)
proUserIp
  = lens _proUserIp (\ s a -> s{_proUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' PropertiesInsert' (Maybe Text)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | The ID of the file.
proFileId :: Lens' PropertiesInsert' Text
proFileId
  = lens _proFileId (\ s a -> s{_proFileId = a})

-- | OAuth 2.0 token for the current user.
proOauthToken :: Lens' PropertiesInsert' (Maybe Text)
proOauthToken
  = lens _proOauthToken
      (\ s a -> s{_proOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' PropertiesInsert' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

-- | Data format for the response.
proAlt :: Lens' PropertiesInsert' Text
proAlt = lens _proAlt (\ s a -> s{_proAlt = a})

instance GoogleRequest PropertiesInsert' where
        type Rs PropertiesInsert' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesInsert{..}
          = go _proQuotaUser _proPrettyPrint _proUserIp _proKey
              _proFileId
              _proOauthToken
              _proFields
              _proAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesInsertAPI)
                      r
                      u
