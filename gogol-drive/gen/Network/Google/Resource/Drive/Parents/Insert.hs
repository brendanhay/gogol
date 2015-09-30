{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Parents.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a parent folder for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsInsert@.
module Drive.Parents.Insert
    (
    -- * REST Resource
      ParentsInsertAPI

    -- * Creating a Request
    , parentsInsert
    , ParentsInsert

    -- * Request Lenses
    , piQuotaUser
    , piPrettyPrint
    , piUserIp
    , piKey
    , piFileId
    , piOauthToken
    , piFields
    , piAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsInsert@ which the
-- 'ParentsInsert' request conforms to.
type ParentsInsertAPI =
     "files" :>
       Capture "fileId" Text :>
         "parents" :> Post '[JSON] ParentReference

-- | Adds a parent folder for a file.
--
-- /See:/ 'parentsInsert' smart constructor.
data ParentsInsert = ParentsInsert
    { _piQuotaUser   :: !(Maybe Text)
    , _piPrettyPrint :: !Bool
    , _piUserIp      :: !(Maybe Text)
    , _piKey         :: !(Maybe Text)
    , _piFileId      :: !Text
    , _piOauthToken  :: !(Maybe Text)
    , _piFields      :: !(Maybe Text)
    , _piAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIp'
--
-- * 'piKey'
--
-- * 'piFileId'
--
-- * 'piOauthToken'
--
-- * 'piFields'
--
-- * 'piAlt'
parentsInsert
    :: Text -- ^ 'fileId'
    -> ParentsInsert
parentsInsert pPiFileId_ =
    ParentsInsert
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piUserIp = Nothing
    , _piKey = Nothing
    , _piFileId = pPiFileId_
    , _piOauthToken = Nothing
    , _piFields = Nothing
    , _piAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' ParentsInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' ParentsInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIp :: Lens' ParentsInsert' (Maybe Text)
piUserIp = lens _piUserIp (\ s a -> s{_piUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' ParentsInsert' (Maybe Text)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | The ID of the file.
piFileId :: Lens' ParentsInsert' Text
piFileId = lens _piFileId (\ s a -> s{_piFileId = a})

-- | OAuth 2.0 token for the current user.
piOauthToken :: Lens' ParentsInsert' (Maybe Text)
piOauthToken
  = lens _piOauthToken (\ s a -> s{_piOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' ParentsInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

-- | Data format for the response.
piAlt :: Lens' ParentsInsert' Text
piAlt = lens _piAlt (\ s a -> s{_piAlt = a})

instance GoogleRequest ParentsInsert' where
        type Rs ParentsInsert' = ParentReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsInsert{..}
          = go _piQuotaUser _piPrettyPrint _piUserIp _piKey
              _piFileId
              _piOauthToken
              _piFields
              _piAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ParentsInsertAPI) r
                      u
