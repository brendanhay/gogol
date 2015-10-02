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
    , cUserIP
    , cFolderId
    , cChildReference
    , cKey
    , cOAuthToken
    , cFields
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
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ChildReference :>
                           Post '[JSON] ChildReference

-- | Inserts a file into a folder.
--
-- /See:/ 'childrenInsert'' smart constructor.
data ChildrenInsert' = ChildrenInsert'
    { _cQuotaUser      :: !(Maybe Text)
    , _cPrettyPrint    :: !Bool
    , _cUserIP         :: !(Maybe Text)
    , _cFolderId       :: !Text
    , _cChildReference :: !ChildReference
    , _cKey            :: !(Maybe Key)
    , _cOAuthToken     :: !(Maybe OAuthToken)
    , _cFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIP'
--
-- * 'cFolderId'
--
-- * 'cChildReference'
--
-- * 'cKey'
--
-- * 'cOAuthToken'
--
-- * 'cFields'
childrenInsert'
    :: Text -- ^ 'folderId'
    -> ChildReference -- ^ 'ChildReference'
    -> ChildrenInsert'
childrenInsert' pCFolderId_ pCChildReference_ =
    ChildrenInsert'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIP = Nothing
    , _cFolderId = pCFolderId_
    , _cChildReference = pCChildReference_
    , _cKey = Nothing
    , _cOAuthToken = Nothing
    , _cFields = Nothing
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
cUserIP :: Lens' ChildrenInsert' (Maybe Text)
cUserIP = lens _cUserIP (\ s a -> s{_cUserIP = a})

-- | The ID of the folder.
cFolderId :: Lens' ChildrenInsert' Text
cFolderId
  = lens _cFolderId (\ s a -> s{_cFolderId = a})

-- | Multipart request metadata.
cChildReference :: Lens' ChildrenInsert' ChildReference
cChildReference
  = lens _cChildReference
      (\ s a -> s{_cChildReference = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' ChildrenInsert' (Maybe Key)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOAuthToken :: Lens' ChildrenInsert' (Maybe OAuthToken)
cOAuthToken
  = lens _cOAuthToken (\ s a -> s{_cOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' ChildrenInsert' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

instance GoogleAuth ChildrenInsert' where
        authKey = cKey . _Just
        authToken = cOAuthToken . _Just

instance GoogleRequest ChildrenInsert' where
        type Rs ChildrenInsert' = ChildReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenInsert'{..}
          = go _cQuotaUser (Just _cPrettyPrint) _cUserIP
              _cFolderId
              _cKey
              _cOAuthToken
              _cFields
              (Just AltJSON)
              _cChildReference
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChildrenInsertResource)
                      r
                      u
