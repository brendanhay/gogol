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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesInsert@.
module Network.Google.Resource.DFAReporting.Sites.Insert
    (
    -- * REST Resource
      SitesInsertResource

    -- * Creating a Request
    , sitesInsert'
    , SitesInsert'

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIP
    , siProFileId
    , siPayload
    , siKey
    , siOAuthToken
    , siFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesInsert@ which the
-- 'SitesInsert'' request conforms to.
type SitesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Site :> Post '[JSON] Site

-- | Inserts a new site.
--
-- /See:/ 'sitesInsert'' smart constructor.
data SitesInsert' = SitesInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIP      :: !(Maybe Text)
    , _siProFileId   :: !Int64
    , _siPayload     :: !Site
    , _siKey         :: !(Maybe AuthKey)
    , _siOAuthToken  :: !(Maybe OAuthToken)
    , _siFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIP'
--
-- * 'siProFileId'
--
-- * 'siPayload'
--
-- * 'siKey'
--
-- * 'siOAuthToken'
--
-- * 'siFields'
sitesInsert'
    :: Int64 -- ^ 'profileId'
    -> Site -- ^ 'payload'
    -> SitesInsert'
sitesInsert' pSiProFileId_ pSiPayload_ =
    SitesInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIP = Nothing
    , _siProFileId = pSiProFileId_
    , _siPayload = pSiPayload_
    , _siKey = Nothing
    , _siOAuthToken = Nothing
    , _siFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SitesInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SitesInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIP :: Lens' SitesInsert' (Maybe Text)
siUserIP = lens _siUserIP (\ s a -> s{_siUserIP = a})

-- | User profile ID associated with this request.
siProFileId :: Lens' SitesInsert' Int64
siProFileId
  = lens _siProFileId (\ s a -> s{_siProFileId = a})

-- | Multipart request metadata.
siPayload :: Lens' SitesInsert' Site
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SitesInsert' (Maybe AuthKey)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOAuthToken :: Lens' SitesInsert' (Maybe OAuthToken)
siOAuthToken
  = lens _siOAuthToken (\ s a -> s{_siOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SitesInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

instance GoogleAuth SitesInsert' where
        authKey = siKey . _Just
        authToken = siOAuthToken . _Just

instance GoogleRequest SitesInsert' where
        type Rs SitesInsert' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesInsert'{..}
          = go _siProFileId _siQuotaUser (Just _siPrettyPrint)
              _siUserIP
              _siFields
              _siKey
              _siOAuthToken
              (Just AltJSON)
              _siPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitesInsertResource)
                      r
                      u
