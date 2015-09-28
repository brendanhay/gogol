{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s parents.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.parents.list@.
module Network.Google.API.Drive.Parents.List
    (
    -- * REST Resource
      ParentsListAPI

    -- * Creating a Request
    , parentsList'
    , ParentsList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIp
    , plKey
    , plFileId
    , plOauthToken
    , plFields
    , plAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.parents.list which the
-- 'ParentsList'' request conforms to.
type ParentsListAPI =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] ParentList

-- | Lists a file\'s parents.
--
-- /See:/ 'parentsList'' smart constructor.
data ParentsList' = ParentsList'
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIp      :: !(Maybe Text)
    , _plKey         :: !(Maybe Text)
    , _plFileId      :: !Text
    , _plOauthToken  :: !(Maybe Text)
    , _plFields      :: !(Maybe Text)
    , _plAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIp'
--
-- * 'plKey'
--
-- * 'plFileId'
--
-- * 'plOauthToken'
--
-- * 'plFields'
--
-- * 'plAlt'
parentsList'
    :: Text -- ^ 'fileId'
    -> ParentsList'
parentsList' pPlFileId_ =
    ParentsList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIp = Nothing
    , _plKey = Nothing
    , _plFileId = pPlFileId_
    , _plOauthToken = Nothing
    , _plFields = Nothing
    , _plAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' ParentsList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' ParentsList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' ParentsList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' ParentsList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | The ID of the file.
plFileId :: Lens' ParentsList' Text
plFileId = lens _plFileId (\ s a -> s{_plFileId = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' ParentsList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' ParentsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' ParentsList' Alt
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest ParentsList' where
        type Rs ParentsList' = ParentList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsList'{..}
          = go _plQuotaUser (Just _plPrettyPrint) _plUserIp
              _plKey
              _plFileId
              _plOauthToken
              _plFields
              (Just _plAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ParentsListAPI) r u
