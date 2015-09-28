{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Parents.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific parent reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.parents.get@.
module Network.Google.API.Drive.Parents.Get
    (
    -- * REST Resource
      ParentsGetAPI

    -- * Creating a Request
    , parentsGet'
    , ParentsGet'

    -- * Request Lenses
    , parQuotaUser
    , parPrettyPrint
    , parUserIp
    , parKey
    , parFileId
    , parOauthToken
    , parParentId
    , parFields
    , parAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.parents.get which the
-- 'ParentsGet'' request conforms to.
type ParentsGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           Capture "parentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ParentReference

-- | Gets a specific parent reference.
--
-- /See:/ 'parentsGet'' smart constructor.
data ParentsGet' = ParentsGet'
    { _parQuotaUser   :: !(Maybe Text)
    , _parPrettyPrint :: !Bool
    , _parUserIp      :: !(Maybe Text)
    , _parKey         :: !(Maybe Text)
    , _parFileId      :: !Text
    , _parOauthToken  :: !(Maybe Text)
    , _parParentId    :: !Text
    , _parFields      :: !(Maybe Text)
    , _parAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parQuotaUser'
--
-- * 'parPrettyPrint'
--
-- * 'parUserIp'
--
-- * 'parKey'
--
-- * 'parFileId'
--
-- * 'parOauthToken'
--
-- * 'parParentId'
--
-- * 'parFields'
--
-- * 'parAlt'
parentsGet'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsGet'
parentsGet' pParFileId_ pParParentId_ =
    ParentsGet'
    { _parQuotaUser = Nothing
    , _parPrettyPrint = True
    , _parUserIp = Nothing
    , _parKey = Nothing
    , _parFileId = pParFileId_
    , _parOauthToken = Nothing
    , _parParentId = pParParentId_
    , _parFields = Nothing
    , _parAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
parQuotaUser :: Lens' ParentsGet' (Maybe Text)
parQuotaUser
  = lens _parQuotaUser (\ s a -> s{_parQuotaUser = a})

-- | Returns response with indentations and line breaks.
parPrettyPrint :: Lens' ParentsGet' Bool
parPrettyPrint
  = lens _parPrettyPrint
      (\ s a -> s{_parPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
parUserIp :: Lens' ParentsGet' (Maybe Text)
parUserIp
  = lens _parUserIp (\ s a -> s{_parUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
parKey :: Lens' ParentsGet' (Maybe Text)
parKey = lens _parKey (\ s a -> s{_parKey = a})

-- | The ID of the file.
parFileId :: Lens' ParentsGet' Text
parFileId
  = lens _parFileId (\ s a -> s{_parFileId = a})

-- | OAuth 2.0 token for the current user.
parOauthToken :: Lens' ParentsGet' (Maybe Text)
parOauthToken
  = lens _parOauthToken
      (\ s a -> s{_parOauthToken = a})

-- | The ID of the parent.
parParentId :: Lens' ParentsGet' Text
parParentId
  = lens _parParentId (\ s a -> s{_parParentId = a})

-- | Selector specifying which fields to include in a partial response.
parFields :: Lens' ParentsGet' (Maybe Text)
parFields
  = lens _parFields (\ s a -> s{_parFields = a})

-- | Data format for the response.
parAlt :: Lens' ParentsGet' Alt
parAlt = lens _parAlt (\ s a -> s{_parAlt = a})

instance GoogleRequest ParentsGet' where
        type Rs ParentsGet' = ParentReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsGet'{..}
          = go _parQuotaUser (Just _parPrettyPrint) _parUserIp
              _parKey
              _parFileId
              _parOauthToken
              _parParentId
              _parFields
              (Just _parAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ParentsGetAPI) r u
