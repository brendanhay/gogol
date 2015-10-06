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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one directory site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDirectorySitesGet@.
module Network.Google.Resource.DFAReporting.DirectorySites.Get
    (
    -- * REST Resource
      DirectorySitesGetResource

    -- * Creating a Request
    , directorySitesGet'
    , DirectorySitesGet'

    -- * Request Lenses
    , dsgQuotaUser
    , dsgPrettyPrint
    , dsgUserIP
    , dsgProFileId
    , dsgKey
    , dsgId
    , dsgOAuthToken
    , dsgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDirectorySitesGet@ which the
-- 'DirectorySitesGet'' request conforms to.
type DirectorySitesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySites" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DirectorySite

-- | Gets one directory site by ID.
--
-- /See:/ 'directorySitesGet'' smart constructor.
data DirectorySitesGet' = DirectorySitesGet'
    { _dsgQuotaUser   :: !(Maybe Text)
    , _dsgPrettyPrint :: !Bool
    , _dsgUserIP      :: !(Maybe Text)
    , _dsgProFileId   :: !Int64
    , _dsgKey         :: !(Maybe AuthKey)
    , _dsgId          :: !Int64
    , _dsgOAuthToken  :: !(Maybe OAuthToken)
    , _dsgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgQuotaUser'
--
-- * 'dsgPrettyPrint'
--
-- * 'dsgUserIP'
--
-- * 'dsgProFileId'
--
-- * 'dsgKey'
--
-- * 'dsgId'
--
-- * 'dsgOAuthToken'
--
-- * 'dsgFields'
directorySitesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> DirectorySitesGet'
directorySitesGet' pDsgProFileId_ pDsgId_ =
    DirectorySitesGet'
    { _dsgQuotaUser = Nothing
    , _dsgPrettyPrint = True
    , _dsgUserIP = Nothing
    , _dsgProFileId = pDsgProFileId_
    , _dsgKey = Nothing
    , _dsgId = pDsgId_
    , _dsgOAuthToken = Nothing
    , _dsgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dsgQuotaUser :: Lens' DirectorySitesGet' (Maybe Text)
dsgQuotaUser
  = lens _dsgQuotaUser (\ s a -> s{_dsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsgPrettyPrint :: Lens' DirectorySitesGet' Bool
dsgPrettyPrint
  = lens _dsgPrettyPrint
      (\ s a -> s{_dsgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dsgUserIP :: Lens' DirectorySitesGet' (Maybe Text)
dsgUserIP
  = lens _dsgUserIP (\ s a -> s{_dsgUserIP = a})

-- | User profile ID associated with this request.
dsgProFileId :: Lens' DirectorySitesGet' Int64
dsgProFileId
  = lens _dsgProFileId (\ s a -> s{_dsgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsgKey :: Lens' DirectorySitesGet' (Maybe AuthKey)
dsgKey = lens _dsgKey (\ s a -> s{_dsgKey = a})

-- | Directory site ID.
dsgId :: Lens' DirectorySitesGet' Int64
dsgId = lens _dsgId (\ s a -> s{_dsgId = a})

-- | OAuth 2.0 token for the current user.
dsgOAuthToken :: Lens' DirectorySitesGet' (Maybe OAuthToken)
dsgOAuthToken
  = lens _dsgOAuthToken
      (\ s a -> s{_dsgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsgFields :: Lens' DirectorySitesGet' (Maybe Text)
dsgFields
  = lens _dsgFields (\ s a -> s{_dsgFields = a})

instance GoogleAuth DirectorySitesGet' where
        authKey = dsgKey . _Just
        authToken = dsgOAuthToken . _Just

instance GoogleRequest DirectorySitesGet' where
        type Rs DirectorySitesGet' = DirectorySite
        request = requestWith dFAReportingRequest
        requestWith rq DirectorySitesGet'{..}
          = go _dsgProFileId _dsgId _dsgQuotaUser
              (Just _dsgPrettyPrint)
              _dsgUserIP
              _dsgFields
              _dsgKey
              _dsgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DirectorySitesGetResource)
                      rq
