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
module Network.Google.Resource.Drive.Children.Delete
    (
    -- * REST Resource
      ChildrenDeleteResource

    -- * Creating a Request
    , childrenDelete'
    , ChildrenDelete'

    -- * Request Lenses
    , cddQuotaUser
    , cddPrettyPrint
    , cddUserIp
    , cddFolderId
    , cddKey
    , cddChildId
    , cddOauthToken
    , cddFields
    , cddAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenDelete@ which the
-- 'ChildrenDelete'' request conforms to.
type ChildrenDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes a child from a folder.
--
-- /See:/ 'childrenDelete'' smart constructor.
data ChildrenDelete' = ChildrenDelete'
    { _cddQuotaUser   :: !(Maybe Text)
    , _cddPrettyPrint :: !Bool
    , _cddUserIp      :: !(Maybe Text)
    , _cddFolderId    :: !Text
    , _cddKey         :: !(Maybe Text)
    , _cddChildId     :: !Text
    , _cddOauthToken  :: !(Maybe Text)
    , _cddFields      :: !(Maybe Text)
    , _cddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddUserIp'
--
-- * 'cddFolderId'
--
-- * 'cddKey'
--
-- * 'cddChildId'
--
-- * 'cddOauthToken'
--
-- * 'cddFields'
--
-- * 'cddAlt'
childrenDelete'
    :: Text -- ^ 'folderId'
    -> Text -- ^ 'childId'
    -> ChildrenDelete'
childrenDelete' pCddFolderId_ pCddChildId_ =
    ChildrenDelete'
    { _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddUserIp = Nothing
    , _cddFolderId = pCddFolderId_
    , _cddKey = Nothing
    , _cddChildId = pCddChildId_
    , _cddOauthToken = Nothing
    , _cddFields = Nothing
    , _cddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' ChildrenDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' ChildrenDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIp :: Lens' ChildrenDelete' (Maybe Text)
cddUserIp
  = lens _cddUserIp (\ s a -> s{_cddUserIp = a})

-- | The ID of the folder.
cddFolderId :: Lens' ChildrenDelete' Text
cddFolderId
  = lens _cddFolderId (\ s a -> s{_cddFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' ChildrenDelete' (Maybe Text)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | The ID of the child.
cddChildId :: Lens' ChildrenDelete' Text
cddChildId
  = lens _cddChildId (\ s a -> s{_cddChildId = a})

-- | OAuth 2.0 token for the current user.
cddOauthToken :: Lens' ChildrenDelete' (Maybe Text)
cddOauthToken
  = lens _cddOauthToken
      (\ s a -> s{_cddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' ChildrenDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

-- | Data format for the response.
cddAlt :: Lens' ChildrenDelete' Alt
cddAlt = lens _cddAlt (\ s a -> s{_cddAlt = a})

instance GoogleRequest ChildrenDelete' where
        type Rs ChildrenDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenDelete'{..}
          = go _cddQuotaUser (Just _cddPrettyPrint) _cddUserIp
              _cddFolderId
              _cddKey
              _cddChildId
              _cddOauthToken
              _cddFields
              (Just _cddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChildrenDeleteResource)
                      r
                      u
