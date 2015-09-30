{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Children.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a child from a folder.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenDelete@.
module Drive.Children.Delete
    (
    -- * REST Resource
      ChildrenDeleteAPI

    -- * Creating a Request
    , childrenDelete
    , ChildrenDelete

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdFolderId
    , cdKey
    , cdChildId
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenDelete@ which the
-- 'ChildrenDelete' request conforms to.
type ChildrenDeleteAPI =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           Capture "childId" Text :> Delete '[JSON] ()

-- | Removes a child from a folder.
--
-- /See:/ 'childrenDelete' smart constructor.
data ChildrenDelete = ChildrenDelete
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIp      :: !(Maybe Text)
    , _cdFolderId    :: !Text
    , _cdKey         :: !(Maybe Text)
    , _cdChildId     :: !Text
    , _cdOauthToken  :: !(Maybe Text)
    , _cdFields      :: !(Maybe Text)
    , _cdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdFolderId'
--
-- * 'cdKey'
--
-- * 'cdChildId'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
childrenDelete
    :: Text -- ^ 'folderId'
    -> Text -- ^ 'childId'
    -> ChildrenDelete
childrenDelete pCdFolderId_ pCdChildId_ =
    ChildrenDelete
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdFolderId = pCdFolderId_
    , _cdKey = Nothing
    , _cdChildId = pCdChildId_
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' ChildrenDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' ChildrenDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' ChildrenDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | The ID of the folder.
cdFolderId :: Lens' ChildrenDelete' Text
cdFolderId
  = lens _cdFolderId (\ s a -> s{_cdFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' ChildrenDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the child.
cdChildId :: Lens' ChildrenDelete' Text
cdChildId
  = lens _cdChildId (\ s a -> s{_cdChildId = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' ChildrenDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' ChildrenDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' ChildrenDelete' Text
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest ChildrenDelete' where
        type Rs ChildrenDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenDelete{..}
          = go _cdQuotaUser _cdPrettyPrint _cdUserIp
              _cdFolderId
              _cdKey
              _cdChildId
              _cdOauthToken
              _cdFields
              _cdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ChildrenDeleteAPI)
                      r
                      u
