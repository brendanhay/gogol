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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesDelete@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Delete
    (
    -- * REST Resource
      FloodlightActivitiesDeleteResource

    -- * Creating a Request
    , floodlightActivitiesDelete'
    , FloodlightActivitiesDelete'

    -- * Request Lenses
    , fadQuotaUser
    , fadPrettyPrint
    , fadUserIP
    , fadProFileId
    , fadKey
    , fadId
    , fadOAuthToken
    , fadFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesDelete@ which the
-- 'FloodlightActivitiesDelete'' request conforms to.
type FloodlightActivitiesDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesDelete'' smart constructor.
data FloodlightActivitiesDelete' = FloodlightActivitiesDelete'
    { _fadQuotaUser   :: !(Maybe Text)
    , _fadPrettyPrint :: !Bool
    , _fadUserIP      :: !(Maybe Text)
    , _fadProFileId   :: !Int64
    , _fadKey         :: !(Maybe AuthKey)
    , _fadId          :: !Int64
    , _fadOAuthToken  :: !(Maybe OAuthToken)
    , _fadFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadQuotaUser'
--
-- * 'fadPrettyPrint'
--
-- * 'fadUserIP'
--
-- * 'fadProFileId'
--
-- * 'fadKey'
--
-- * 'fadId'
--
-- * 'fadOAuthToken'
--
-- * 'fadFields'
floodlightActivitiesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesDelete'
floodlightActivitiesDelete' pFadProFileId_ pFadId_ =
    FloodlightActivitiesDelete'
    { _fadQuotaUser = Nothing
    , _fadPrettyPrint = True
    , _fadUserIP = Nothing
    , _fadProFileId = pFadProFileId_
    , _fadKey = Nothing
    , _fadId = pFadId_
    , _fadOAuthToken = Nothing
    , _fadFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fadQuotaUser :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadQuotaUser
  = lens _fadQuotaUser (\ s a -> s{_fadQuotaUser = a})

-- | Returns response with indentations and line breaks.
fadPrettyPrint :: Lens' FloodlightActivitiesDelete' Bool
fadPrettyPrint
  = lens _fadPrettyPrint
      (\ s a -> s{_fadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fadUserIP :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadUserIP
  = lens _fadUserIP (\ s a -> s{_fadUserIP = a})

-- | User profile ID associated with this request.
fadProFileId :: Lens' FloodlightActivitiesDelete' Int64
fadProFileId
  = lens _fadProFileId (\ s a -> s{_fadProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fadKey :: Lens' FloodlightActivitiesDelete' (Maybe AuthKey)
fadKey = lens _fadKey (\ s a -> s{_fadKey = a})

-- | Floodlight activity ID.
fadId :: Lens' FloodlightActivitiesDelete' Int64
fadId = lens _fadId (\ s a -> s{_fadId = a})

-- | OAuth 2.0 token for the current user.
fadOAuthToken :: Lens' FloodlightActivitiesDelete' (Maybe OAuthToken)
fadOAuthToken
  = lens _fadOAuthToken
      (\ s a -> s{_fadOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fadFields :: Lens' FloodlightActivitiesDelete' (Maybe Text)
fadFields
  = lens _fadFields (\ s a -> s{_fadFields = a})

instance GoogleAuth FloodlightActivitiesDelete' where
        authKey = fadKey . _Just
        authToken = fadOAuthToken . _Just

instance GoogleRequest FloodlightActivitiesDelete'
         where
        type Rs FloodlightActivitiesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesDelete'{..}
          = go _fadProFileId _fadId _fadQuotaUser
              (Just _fadPrettyPrint)
              _fadUserIP
              _fadFields
              _fadKey
              _fadOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesDeleteResource)
                      r
                      u
