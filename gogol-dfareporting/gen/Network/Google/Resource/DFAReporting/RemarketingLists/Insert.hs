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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new remarketing list.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsInsert@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Insert
    (
    -- * REST Resource
      RemarketingListsInsertResource

    -- * Creating a Request
    , remarketingListsInsert'
    , RemarketingListsInsert'

    -- * Request Lenses
    , rliQuotaUser
    , rliPrettyPrint
    , rliUserIP
    , rliProFileId
    , rliPayload
    , rliKey
    , rliOAuthToken
    , rliFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsInsert@ method which the
-- 'RemarketingListsInsert'' request conforms to.
type RemarketingListsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RemarketingList :>
                           Post '[JSON] RemarketingList

-- | Inserts a new remarketing list.
--
-- /See:/ 'remarketingListsInsert'' smart constructor.
data RemarketingListsInsert' = RemarketingListsInsert'
    { _rliQuotaUser   :: !(Maybe Text)
    , _rliPrettyPrint :: !Bool
    , _rliUserIP      :: !(Maybe Text)
    , _rliProFileId   :: !Int64
    , _rliPayload     :: !RemarketingList
    , _rliKey         :: !(Maybe AuthKey)
    , _rliOAuthToken  :: !(Maybe OAuthToken)
    , _rliFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rliQuotaUser'
--
-- * 'rliPrettyPrint'
--
-- * 'rliUserIP'
--
-- * 'rliProFileId'
--
-- * 'rliPayload'
--
-- * 'rliKey'
--
-- * 'rliOAuthToken'
--
-- * 'rliFields'
remarketingListsInsert'
    :: Int64 -- ^ 'profileId'
    -> RemarketingList -- ^ 'payload'
    -> RemarketingListsInsert'
remarketingListsInsert' pRliProFileId_ pRliPayload_ =
    RemarketingListsInsert'
    { _rliQuotaUser = Nothing
    , _rliPrettyPrint = True
    , _rliUserIP = Nothing
    , _rliProFileId = pRliProFileId_
    , _rliPayload = pRliPayload_
    , _rliKey = Nothing
    , _rliOAuthToken = Nothing
    , _rliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rliQuotaUser :: Lens' RemarketingListsInsert' (Maybe Text)
rliQuotaUser
  = lens _rliQuotaUser (\ s a -> s{_rliQuotaUser = a})

-- | Returns response with indentations and line breaks.
rliPrettyPrint :: Lens' RemarketingListsInsert' Bool
rliPrettyPrint
  = lens _rliPrettyPrint
      (\ s a -> s{_rliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rliUserIP :: Lens' RemarketingListsInsert' (Maybe Text)
rliUserIP
  = lens _rliUserIP (\ s a -> s{_rliUserIP = a})

-- | User profile ID associated with this request.
rliProFileId :: Lens' RemarketingListsInsert' Int64
rliProFileId
  = lens _rliProFileId (\ s a -> s{_rliProFileId = a})

-- | Multipart request metadata.
rliPayload :: Lens' RemarketingListsInsert' RemarketingList
rliPayload
  = lens _rliPayload (\ s a -> s{_rliPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rliKey :: Lens' RemarketingListsInsert' (Maybe AuthKey)
rliKey = lens _rliKey (\ s a -> s{_rliKey = a})

-- | OAuth 2.0 token for the current user.
rliOAuthToken :: Lens' RemarketingListsInsert' (Maybe OAuthToken)
rliOAuthToken
  = lens _rliOAuthToken
      (\ s a -> s{_rliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rliFields :: Lens' RemarketingListsInsert' (Maybe Text)
rliFields
  = lens _rliFields (\ s a -> s{_rliFields = a})

instance GoogleAuth RemarketingListsInsert' where
        _AuthKey = rliKey . _Just
        _AuthToken = rliOAuthToken . _Just

instance GoogleRequest RemarketingListsInsert' where
        type Rs RemarketingListsInsert' = RemarketingList
        request = requestWith dFAReportingRequest
        requestWith rq RemarketingListsInsert'{..}
          = go _rliProFileId _rliQuotaUser
              (Just _rliPrettyPrint)
              _rliUserIP
              _rliFields
              _rliKey
              _rliOAuthToken
              (Just AltJSON)
              _rliPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy RemarketingListsInsertResource)
                      rq
