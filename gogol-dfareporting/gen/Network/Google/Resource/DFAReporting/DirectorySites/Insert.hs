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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new directory site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDirectorySitesInsert@.
module Network.Google.Resource.DFAReporting.DirectorySites.Insert
    (
    -- * REST Resource
      DirectorySitesInsertResource

    -- * Creating a Request
    , directorySitesInsert'
    , DirectorySitesInsert'

    -- * Request Lenses
    , dsiQuotaUser
    , dsiPrettyPrint
    , dsiUserIP
    , dsiProFileId
    , dsiPayload
    , dsiKey
    , dsiOAuthToken
    , dsiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDirectorySitesInsert@ which the
-- 'DirectorySitesInsert'' request conforms to.
type DirectorySitesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DirectorySite :>
                           Post '[JSON] DirectorySite

-- | Inserts a new directory site.
--
-- /See:/ 'directorySitesInsert'' smart constructor.
data DirectorySitesInsert' = DirectorySitesInsert'
    { _dsiQuotaUser   :: !(Maybe Text)
    , _dsiPrettyPrint :: !Bool
    , _dsiUserIP      :: !(Maybe Text)
    , _dsiProFileId   :: !Int64
    , _dsiPayload     :: !DirectorySite
    , _dsiKey         :: !(Maybe AuthKey)
    , _dsiOAuthToken  :: !(Maybe OAuthToken)
    , _dsiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiQuotaUser'
--
-- * 'dsiPrettyPrint'
--
-- * 'dsiUserIP'
--
-- * 'dsiProFileId'
--
-- * 'dsiPayload'
--
-- * 'dsiKey'
--
-- * 'dsiOAuthToken'
--
-- * 'dsiFields'
directorySitesInsert'
    :: Int64 -- ^ 'profileId'
    -> DirectorySite -- ^ 'payload'
    -> DirectorySitesInsert'
directorySitesInsert' pDsiProFileId_ pDsiPayload_ =
    DirectorySitesInsert'
    { _dsiQuotaUser = Nothing
    , _dsiPrettyPrint = True
    , _dsiUserIP = Nothing
    , _dsiProFileId = pDsiProFileId_
    , _dsiPayload = pDsiPayload_
    , _dsiKey = Nothing
    , _dsiOAuthToken = Nothing
    , _dsiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dsiQuotaUser :: Lens' DirectorySitesInsert' (Maybe Text)
dsiQuotaUser
  = lens _dsiQuotaUser (\ s a -> s{_dsiQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsiPrettyPrint :: Lens' DirectorySitesInsert' Bool
dsiPrettyPrint
  = lens _dsiPrettyPrint
      (\ s a -> s{_dsiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dsiUserIP :: Lens' DirectorySitesInsert' (Maybe Text)
dsiUserIP
  = lens _dsiUserIP (\ s a -> s{_dsiUserIP = a})

-- | User profile ID associated with this request.
dsiProFileId :: Lens' DirectorySitesInsert' Int64
dsiProFileId
  = lens _dsiProFileId (\ s a -> s{_dsiProFileId = a})

-- | Multipart request metadata.
dsiPayload :: Lens' DirectorySitesInsert' DirectorySite
dsiPayload
  = lens _dsiPayload (\ s a -> s{_dsiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsiKey :: Lens' DirectorySitesInsert' (Maybe AuthKey)
dsiKey = lens _dsiKey (\ s a -> s{_dsiKey = a})

-- | OAuth 2.0 token for the current user.
dsiOAuthToken :: Lens' DirectorySitesInsert' (Maybe OAuthToken)
dsiOAuthToken
  = lens _dsiOAuthToken
      (\ s a -> s{_dsiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsiFields :: Lens' DirectorySitesInsert' (Maybe Text)
dsiFields
  = lens _dsiFields (\ s a -> s{_dsiFields = a})

instance GoogleAuth DirectorySitesInsert' where
        authKey = dsiKey . _Just
        authToken = dsiOAuthToken . _Just

instance GoogleRequest DirectorySitesInsert' where
        type Rs DirectorySitesInsert' = DirectorySite
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DirectorySitesInsert'{..}
          = go _dsiProFileId _dsiQuotaUser
              (Just _dsiPrettyPrint)
              _dsiUserIP
              _dsiFields
              _dsiKey
              _dsiOAuthToken
              (Just AltJSON)
              _dsiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DirectorySitesInsertResource)
                      r
                      u
