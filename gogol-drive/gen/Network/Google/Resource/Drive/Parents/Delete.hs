{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Parents.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a parent from a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsDelete@.
module Drive.Parents.Delete
    (
    -- * REST Resource
      ParentsDeleteAPI

    -- * Creating a Request
    , parentsDelete
    , ParentsDelete

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdUserIp
    , pdKey
    , pdFileId
    , pdOauthToken
    , pdParentId
    , pdFields
    , pdAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsDelete@ which the
-- 'ParentsDelete' request conforms to.
type ParentsDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           Capture "parentId" Text :> Delete '[JSON] ()

-- | Removes a parent from a file.
--
-- /See:/ 'parentsDelete' smart constructor.
data ParentsDelete = ParentsDelete
    { _pdQuotaUser   :: !(Maybe Text)
    , _pdPrettyPrint :: !Bool
    , _pdUserIp      :: !(Maybe Text)
    , _pdKey         :: !(Maybe Text)
    , _pdFileId      :: !Text
    , _pdOauthToken  :: !(Maybe Text)
    , _pdParentId    :: !Text
    , _pdFields      :: !(Maybe Text)
    , _pdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUserIp'
--
-- * 'pdKey'
--
-- * 'pdFileId'
--
-- * 'pdOauthToken'
--
-- * 'pdParentId'
--
-- * 'pdFields'
--
-- * 'pdAlt'
parentsDelete
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsDelete
parentsDelete pPdFileId_ pPdParentId_ =
    ParentsDelete
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdUserIp = Nothing
    , _pdKey = Nothing
    , _pdFileId = pPdFileId_
    , _pdOauthToken = Nothing
    , _pdParentId = pPdParentId_
    , _pdFields = Nothing
    , _pdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' ParentsDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' ParentsDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIp :: Lens' ParentsDelete' (Maybe Text)
pdUserIp = lens _pdUserIp (\ s a -> s{_pdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' ParentsDelete' (Maybe Text)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | The ID of the file.
pdFileId :: Lens' ParentsDelete' Text
pdFileId = lens _pdFileId (\ s a -> s{_pdFileId = a})

-- | OAuth 2.0 token for the current user.
pdOauthToken :: Lens' ParentsDelete' (Maybe Text)
pdOauthToken
  = lens _pdOauthToken (\ s a -> s{_pdOauthToken = a})

-- | The ID of the parent.
pdParentId :: Lens' ParentsDelete' Text
pdParentId
  = lens _pdParentId (\ s a -> s{_pdParentId = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' ParentsDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

-- | Data format for the response.
pdAlt :: Lens' ParentsDelete' Text
pdAlt = lens _pdAlt (\ s a -> s{_pdAlt = a})

instance GoogleRequest ParentsDelete' where
        type Rs ParentsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsDelete{..}
          = go _pdQuotaUser _pdPrettyPrint _pdUserIp _pdKey
              _pdFileId
              _pdOauthToken
              _pdParentId
              _pdFields
              _pdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ParentsDeleteAPI) r
                      u
