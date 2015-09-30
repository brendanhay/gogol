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
    , paraUserIp
    , paraKey
    , paraFileId
    , paraOauthToken
    , paraParentId
    , paraFields
    , paraAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ParentReference

-- | Gets a specific parent reference.
--
-- /See:/ 'parentsGet'' smart constructor.
data ParentsGet' = ParentsGet'
    { _paraQuotaUser   :: !(Maybe Text)
    , _paraPrettyPrint :: !Bool
    , _paraUserIp      :: !(Maybe Text)
    , _paraKey         :: !(Maybe Text)
    , _paraFileId      :: !Text
    , _paraOauthToken  :: !(Maybe Text)
    , _paraParentId    :: !Text
    , _paraFields      :: !(Maybe Text)
    , _paraAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paraQuotaUser'
--
-- * 'paraPrettyPrint'
--
-- * 'paraUserIp'
--
-- * 'paraKey'
--
-- * 'paraFileId'
--
-- * 'paraOauthToken'
--
-- * 'paraParentId'
--
-- * 'paraFields'
--
-- * 'paraAlt'
parentsGet'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsGet'
parentsGet' pParaFileId_ pParaParentId_ =
    ParentsGet'
    { _paraQuotaUser = Nothing
    , _paraPrettyPrint = True
    , _paraUserIp = Nothing
    , _paraKey = Nothing
    , _paraFileId = pParaFileId_
    , _paraOauthToken = Nothing
    , _paraParentId = pParaParentId_
    , _paraFields = Nothing
    , _paraAlt = JSON
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
paraUserIp :: Lens' ParentsGet' (Maybe Text)
paraUserIp
  = lens _paraUserIp (\ s a -> s{_paraUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
paraKey :: Lens' ParentsGet' (Maybe Text)
paraKey = lens _paraKey (\ s a -> s{_paraKey = a})

-- | The ID of the file.
paraFileId :: Lens' ParentsGet' Text
paraFileId
  = lens _paraFileId (\ s a -> s{_paraFileId = a})

-- | OAuth 2.0 token for the current user.
paraOauthToken :: Lens' ParentsGet' (Maybe Text)
paraOauthToken
  = lens _paraOauthToken
      (\ s a -> s{_paraOauthToken = a})

-- | The ID of the parent.
paraParentId :: Lens' ParentsGet' Text
paraParentId
  = lens _paraParentId (\ s a -> s{_paraParentId = a})

-- | Selector specifying which fields to include in a partial response.
paraFields :: Lens' ParentsGet' (Maybe Text)
paraFields
  = lens _paraFields (\ s a -> s{_paraFields = a})

-- | Data format for the response.
paraAlt :: Lens' ParentsGet' Alt
paraAlt = lens _paraAlt (\ s a -> s{_paraAlt = a})

instance GoogleRequest ParentsGet' where
        type Rs ParentsGet' = ParentReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsGet'{..}
          = go _paraQuotaUser (Just _paraPrettyPrint)
              _paraUserIp
              _paraKey
              _paraFileId
              _paraOauthToken
              _paraParentId
              _paraFields
              (Just _paraAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ParentsGetResource)
                      r
                      u
