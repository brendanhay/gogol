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
-- Module      : Network.Google.Resource.Drive.Children.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a file into a folder.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenInsert@.
module Network.Google.Resource.Drive.Children.Insert
    (
    -- * REST Resource
      ChildrenInsertResource

    -- * Creating a Request
    , childrenInsert'
    , ChildrenInsert'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIp
    , cFolderId
    , cKey
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenInsert@ which the
-- 'ChildrenInsert'' request conforms to.
type ChildrenInsertResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ChildReference

-- | Inserts a file into a folder.
--
-- /See:/ 'childrenInsert'' smart constructor.
data ChildrenInsert' = ChildrenInsert'
    { _cQuotaUser   :: !(Maybe Text)
    , _cPrettyPrint :: !Bool
    , _cUserIp      :: !(Maybe Text)
    , _cFolderId    :: !Text
    , _cKey         :: !(Maybe Text)
    , _cOauthToken  :: !(Maybe Text)
    , _cFields      :: !(Maybe Text)
    , _cAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cFolderId'
--
-- * 'cKey'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
childrenInsert'
    :: Text -- ^ 'folderId'
    -> ChildrenInsert'
childrenInsert' pCFolderId_ =
    ChildrenInsert'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cFolderId = pCFolderId_
    , _cKey = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' ChildrenInsert' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' ChildrenInsert' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' ChildrenInsert' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | The ID of the folder.
cFolderId :: Lens' ChildrenInsert' Text
cFolderId
  = lens _cFolderId (\ s a -> s{_cFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' ChildrenInsert' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' ChildrenInsert' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' ChildrenInsert' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' ChildrenInsert' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest ChildrenInsert' where
        type Rs ChildrenInsert' = ChildReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenInsert'{..}
          = go _cQuotaUser (Just _cPrettyPrint) _cUserIp
              _cFolderId
              _cKey
              _cOauthToken
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChildrenInsertResource)
                      r
                      u
