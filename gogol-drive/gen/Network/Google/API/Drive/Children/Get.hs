{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Children.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific child reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.children.get@.
module Network.Google.API.Drive.Children.Get
    (
    -- * REST Resource
      ChildrenGetAPI

    -- * Creating a Request
    , childrenGet'
    , ChildrenGet'

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggUserIp
    , cggFolderId
    , cggKey
    , cggChildId
    , cggOauthToken
    , cggFields
    , cggAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.children.get which the
-- 'ChildrenGet'' request conforms to.
type ChildrenGetAPI =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           Capture "childId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ChildReference

-- | Gets a specific child reference.
--
-- /See:/ 'childrenGet'' smart constructor.
data ChildrenGet' = ChildrenGet'
    { _cggQuotaUser   :: !(Maybe Text)
    , _cggPrettyPrint :: !Bool
    , _cggUserIp      :: !(Maybe Text)
    , _cggFolderId    :: !Text
    , _cggKey         :: !(Maybe Text)
    , _cggChildId     :: !Text
    , _cggOauthToken  :: !(Maybe Text)
    , _cggFields      :: !(Maybe Text)
    , _cggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggUserIp'
--
-- * 'cggFolderId'
--
-- * 'cggKey'
--
-- * 'cggChildId'
--
-- * 'cggOauthToken'
--
-- * 'cggFields'
--
-- * 'cggAlt'
childrenGet'
    :: Text -- ^ 'folderId'
    -> Text -- ^ 'childId'
    -> ChildrenGet'
childrenGet' pCggFolderId_ pCggChildId_ =
    ChildrenGet'
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggUserIp = Nothing
    , _cggFolderId = pCggFolderId_
    , _cggKey = Nothing
    , _cggChildId = pCggChildId_
    , _cggOauthToken = Nothing
    , _cggFields = Nothing
    , _cggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' ChildrenGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' ChildrenGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIp :: Lens' ChildrenGet' (Maybe Text)
cggUserIp
  = lens _cggUserIp (\ s a -> s{_cggUserIp = a})

-- | The ID of the folder.
cggFolderId :: Lens' ChildrenGet' Text
cggFolderId
  = lens _cggFolderId (\ s a -> s{_cggFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' ChildrenGet' (Maybe Text)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | The ID of the child.
cggChildId :: Lens' ChildrenGet' Text
cggChildId
  = lens _cggChildId (\ s a -> s{_cggChildId = a})

-- | OAuth 2.0 token for the current user.
cggOauthToken :: Lens' ChildrenGet' (Maybe Text)
cggOauthToken
  = lens _cggOauthToken
      (\ s a -> s{_cggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' ChildrenGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

-- | Data format for the response.
cggAlt :: Lens' ChildrenGet' Alt
cggAlt = lens _cggAlt (\ s a -> s{_cggAlt = a})

instance GoogleRequest ChildrenGet' where
        type Rs ChildrenGet' = ChildReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenGet'{..}
          = go _cggQuotaUser (Just _cggPrettyPrint) _cggUserIp
              _cggFolderId
              _cggKey
              _cggChildId
              _cggOauthToken
              _cggFields
              (Just _cggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ChildrenGetAPI) r u
