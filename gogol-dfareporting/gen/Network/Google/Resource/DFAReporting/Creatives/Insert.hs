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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesInsert@.
module Network.Google.Resource.DFAReporting.Creatives.Insert
    (
    -- * REST Resource
      CreativesInsertResource

    -- * Creating a Request
    , creativesInsert'
    , CreativesInsert'

    -- * Request Lenses
    , creQuotaUser
    , crePrettyPrint
    , creUserIP
    , creProFileId
    , crePayload
    , creKey
    , creOAuthToken
    , creFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesInsert@ which the
-- 'CreativesInsert'' request conforms to.
type CreativesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Creative :> Post '[JSON] Creative

-- | Inserts a new creative.
--
-- /See:/ 'creativesInsert'' smart constructor.
data CreativesInsert' = CreativesInsert'
    { _creQuotaUser   :: !(Maybe Text)
    , _crePrettyPrint :: !Bool
    , _creUserIP      :: !(Maybe Text)
    , _creProFileId   :: !Int64
    , _crePayload     :: !Creative
    , _creKey         :: !(Maybe AuthKey)
    , _creOAuthToken  :: !(Maybe OAuthToken)
    , _creFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creQuotaUser'
--
-- * 'crePrettyPrint'
--
-- * 'creUserIP'
--
-- * 'creProFileId'
--
-- * 'crePayload'
--
-- * 'creKey'
--
-- * 'creOAuthToken'
--
-- * 'creFields'
creativesInsert'
    :: Int64 -- ^ 'profileId'
    -> Creative -- ^ 'payload'
    -> CreativesInsert'
creativesInsert' pCreProFileId_ pCrePayload_ =
    CreativesInsert'
    { _creQuotaUser = Nothing
    , _crePrettyPrint = True
    , _creUserIP = Nothing
    , _creProFileId = pCreProFileId_
    , _crePayload = pCrePayload_
    , _creKey = Nothing
    , _creOAuthToken = Nothing
    , _creFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
creQuotaUser :: Lens' CreativesInsert' (Maybe Text)
creQuotaUser
  = lens _creQuotaUser (\ s a -> s{_creQuotaUser = a})

-- | Returns response with indentations and line breaks.
crePrettyPrint :: Lens' CreativesInsert' Bool
crePrettyPrint
  = lens _crePrettyPrint
      (\ s a -> s{_crePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
creUserIP :: Lens' CreativesInsert' (Maybe Text)
creUserIP
  = lens _creUserIP (\ s a -> s{_creUserIP = a})

-- | User profile ID associated with this request.
creProFileId :: Lens' CreativesInsert' Int64
creProFileId
  = lens _creProFileId (\ s a -> s{_creProFileId = a})

-- | Multipart request metadata.
crePayload :: Lens' CreativesInsert' Creative
crePayload
  = lens _crePayload (\ s a -> s{_crePayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
creKey :: Lens' CreativesInsert' (Maybe AuthKey)
creKey = lens _creKey (\ s a -> s{_creKey = a})

-- | OAuth 2.0 token for the current user.
creOAuthToken :: Lens' CreativesInsert' (Maybe OAuthToken)
creOAuthToken
  = lens _creOAuthToken
      (\ s a -> s{_creOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
creFields :: Lens' CreativesInsert' (Maybe Text)
creFields
  = lens _creFields (\ s a -> s{_creFields = a})

instance GoogleAuth CreativesInsert' where
        authKey = creKey . _Just
        authToken = creOAuthToken . _Just

instance GoogleRequest CreativesInsert' where
        type Rs CreativesInsert' = Creative
        request = requestWith dFAReportingRequest
        requestWith rq CreativesInsert'{..}
          = go _creProFileId _creQuotaUser
              (Just _crePrettyPrint)
              _creUserIP
              _creFields
              _creKey
              _creOAuthToken
              (Just AltJSON)
              _crePayload
          where go
                  = clientBuild
                      (Proxy :: Proxy CreativesInsertResource)
                      rq
