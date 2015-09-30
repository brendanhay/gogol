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
-- Module      : Network.Google.Resource.Drive.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s parents.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsList@.
module Network.Google.Resource.Drive.Parents.List
    (
    -- * REST Resource
      ParentsListResource

    -- * Creating a Request
    , parentsList'
    , ParentsList'

    -- * Request Lenses
    , parQuotaUser
    , parPrettyPrint
    , parUserIp
    , parKey
    , parFileId
    , parOauthToken
    , parFields
    , parAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsList@ which the
-- 'ParentsList'' request conforms to.
type ParentsListResource =
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
    { _parQuotaUser   :: !(Maybe Text)
    , _parPrettyPrint :: !Bool
    , _parUserIp      :: !(Maybe Text)
    , _parKey         :: !(Maybe Text)
    , _parFileId      :: !Text
    , _parOauthToken  :: !(Maybe Text)
    , _parFields      :: !(Maybe Text)
    , _parAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsList'' with the minimum fields required to make a request.
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
-- * 'parFields'
--
-- * 'parAlt'
parentsList'
    :: Text -- ^ 'fileId'
    -> ParentsList'
parentsList' pParFileId_ =
    ParentsList'
    { _parQuotaUser = Nothing
    , _parPrettyPrint = True
    , _parUserIp = Nothing
    , _parKey = Nothing
    , _parFileId = pParFileId_
    , _parOauthToken = Nothing
    , _parFields = Nothing
    , _parAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
parQuotaUser :: Lens' ParentsList' (Maybe Text)
parQuotaUser
  = lens _parQuotaUser (\ s a -> s{_parQuotaUser = a})

-- | Returns response with indentations and line breaks.
parPrettyPrint :: Lens' ParentsList' Bool
parPrettyPrint
  = lens _parPrettyPrint
      (\ s a -> s{_parPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
parUserIp :: Lens' ParentsList' (Maybe Text)
parUserIp
  = lens _parUserIp (\ s a -> s{_parUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
parKey :: Lens' ParentsList' (Maybe Text)
parKey = lens _parKey (\ s a -> s{_parKey = a})

-- | The ID of the file.
parFileId :: Lens' ParentsList' Text
parFileId
  = lens _parFileId (\ s a -> s{_parFileId = a})

-- | OAuth 2.0 token for the current user.
parOauthToken :: Lens' ParentsList' (Maybe Text)
parOauthToken
  = lens _parOauthToken
      (\ s a -> s{_parOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
parFields :: Lens' ParentsList' (Maybe Text)
parFields
  = lens _parFields (\ s a -> s{_parFields = a})

-- | Data format for the response.
parAlt :: Lens' ParentsList' Alt
parAlt = lens _parAlt (\ s a -> s{_parAlt = a})

instance GoogleRequest ParentsList' where
        type Rs ParentsList' = ParentList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsList'{..}
          = go _parQuotaUser (Just _parPrettyPrint) _parUserIp
              _parKey
              _parFileId
              _parOauthToken
              _parFields
              (Just _parAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ParentsListResource)
                      r
                      u
