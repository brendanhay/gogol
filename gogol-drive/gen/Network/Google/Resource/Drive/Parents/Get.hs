{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Parents.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific parent reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsGet@.
module Network.Google.Resource.Drive.Parents.Get
    (
    -- * REST Resource
      ParentsGetResource

    -- * Creating a Request
    , parentsGet'
    , ParentsGet'

    -- * Request Lenses
    , paraQuotaUser
    , paraPrettyPrint
    , paraUserIP
    , paraKey
    , paraFileId
    , paraOAuthToken
    , paraParentId
    , paraFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsGet@ which the
-- 'ParentsGet'' request conforms to.
type ParentsGetResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           Capture "parentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ParentReference

-- | Gets a specific parent reference.
--
-- /See:/ 'parentsGet'' smart constructor.
data ParentsGet' = ParentsGet'
    { _paraQuotaUser   :: !(Maybe Text)
    , _paraPrettyPrint :: !Bool
    , _paraUserIP      :: !(Maybe Text)
    , _paraKey         :: !(Maybe Key)
    , _paraFileId      :: !Text
    , _paraOAuthToken  :: !(Maybe OAuthToken)
    , _paraParentId    :: !Text
    , _paraFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paraQuotaUser'
--
-- * 'paraPrettyPrint'
--
-- * 'paraUserIP'
--
-- * 'paraKey'
--
-- * 'paraFileId'
--
-- * 'paraOAuthToken'
--
-- * 'paraParentId'
--
-- * 'paraFields'
parentsGet'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsGet'
parentsGet' pParaFileId_ pParaParentId_ =
    ParentsGet'
    { _paraQuotaUser = Nothing
    , _paraPrettyPrint = True
    , _paraUserIP = Nothing
    , _paraKey = Nothing
    , _paraFileId = pParaFileId_
    , _paraOAuthToken = Nothing
    , _paraParentId = pParaParentId_
    , _paraFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
paraQuotaUser :: Lens' ParentsGet' (Maybe Text)
paraQuotaUser
  = lens _paraQuotaUser
      (\ s a -> s{_paraQuotaUser = a})

-- | Returns response with indentations and line breaks.
paraPrettyPrint :: Lens' ParentsGet' Bool
paraPrettyPrint
  = lens _paraPrettyPrint
      (\ s a -> s{_paraPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
paraUserIP :: Lens' ParentsGet' (Maybe Text)
paraUserIP
  = lens _paraUserIP (\ s a -> s{_paraUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
paraKey :: Lens' ParentsGet' (Maybe Key)
paraKey = lens _paraKey (\ s a -> s{_paraKey = a})

-- | The ID of the file.
paraFileId :: Lens' ParentsGet' Text
paraFileId
  = lens _paraFileId (\ s a -> s{_paraFileId = a})

-- | OAuth 2.0 token for the current user.
paraOAuthToken :: Lens' ParentsGet' (Maybe OAuthToken)
paraOAuthToken
  = lens _paraOAuthToken
      (\ s a -> s{_paraOAuthToken = a})

-- | The ID of the parent.
paraParentId :: Lens' ParentsGet' Text
paraParentId
  = lens _paraParentId (\ s a -> s{_paraParentId = a})

-- | Selector specifying which fields to include in a partial response.
paraFields :: Lens' ParentsGet' (Maybe Text)
paraFields
  = lens _paraFields (\ s a -> s{_paraFields = a})

instance GoogleAuth ParentsGet' where
        authKey = paraKey . _Just
        authToken = paraOAuthToken . _Just

instance GoogleRequest ParentsGet' where
        type Rs ParentsGet' = ParentReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsGet'{..}
          = go _paraFileId _paraParentId _paraQuotaUser
              (Just _paraPrettyPrint)
              _paraUserIP
              _paraFields
              _paraKey
              _paraOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ParentsGetResource)
                      r
                      u
