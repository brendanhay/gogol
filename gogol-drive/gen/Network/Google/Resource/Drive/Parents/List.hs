{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , parUserIP
    , parKey
    , parFileId
    , parOAuthToken
    , parFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] ParentList

-- | Lists a file\'s parents.
--
-- /See:/ 'parentsList'' smart constructor.
data ParentsList' = ParentsList'
    { _parQuotaUser   :: !(Maybe Text)
    , _parPrettyPrint :: !Bool
    , _parUserIP      :: !(Maybe Text)
    , _parKey         :: !(Maybe AuthKey)
    , _parFileId      :: !Text
    , _parOAuthToken  :: !(Maybe OAuthToken)
    , _parFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parQuotaUser'
--
-- * 'parPrettyPrint'
--
-- * 'parUserIP'
--
-- * 'parKey'
--
-- * 'parFileId'
--
-- * 'parOAuthToken'
--
-- * 'parFields'
parentsList'
    :: Text -- ^ 'fileId'
    -> ParentsList'
parentsList' pParFileId_ =
    ParentsList'
    { _parQuotaUser = Nothing
    , _parPrettyPrint = True
    , _parUserIP = Nothing
    , _parKey = Nothing
    , _parFileId = pParFileId_
    , _parOAuthToken = Nothing
    , _parFields = Nothing
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
parUserIP :: Lens' ParentsList' (Maybe Text)
parUserIP
  = lens _parUserIP (\ s a -> s{_parUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
parKey :: Lens' ParentsList' (Maybe AuthKey)
parKey = lens _parKey (\ s a -> s{_parKey = a})

-- | The ID of the file.
parFileId :: Lens' ParentsList' Text
parFileId
  = lens _parFileId (\ s a -> s{_parFileId = a})

-- | OAuth 2.0 token for the current user.
parOAuthToken :: Lens' ParentsList' (Maybe OAuthToken)
parOAuthToken
  = lens _parOAuthToken
      (\ s a -> s{_parOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
parFields :: Lens' ParentsList' (Maybe Text)
parFields
  = lens _parFields (\ s a -> s{_parFields = a})

instance GoogleAuth ParentsList' where
        _AuthKey = parKey . _Just
        _AuthToken = parOAuthToken . _Just

instance GoogleRequest ParentsList' where
        type Rs ParentsList' = ParentList
        request = requestWith driveRequest
        requestWith rq ParentsList'{..}
          = go _parFileId _parQuotaUser (Just _parPrettyPrint)
              _parUserIP
              _parFields
              _parKey
              _parOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ParentsListResource) rq
