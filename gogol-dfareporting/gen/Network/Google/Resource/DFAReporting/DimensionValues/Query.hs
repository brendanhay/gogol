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
-- Module      : Network.Google.Resource.DFAReporting.DimensionValues.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDimensionValuesQuery@.
module Network.Google.Resource.DFAReporting.DimensionValues.Query
    (
    -- * REST Resource
      DimensionValuesQueryResource

    -- * Creating a Request
    , dimensionValuesQuery'
    , DimensionValuesQuery'

    -- * Request Lenses
    , dvqQuotaUser
    , dvqPrettyPrint
    , dvqUserIP
    , dvqProFileId
    , dvqPayload
    , dvqKey
    , dvqPageToken
    , dvqOAuthToken
    , dvqMaxResults
    , dvqFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDimensionValuesQuery@ which the
-- 'DimensionValuesQuery'' request conforms to.
type DimensionValuesQueryResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "dimensionvalues" :>
           "query" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] DimensionValueRequest :>
                                 Post '[JSON] DimensionValueList

-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ 'dimensionValuesQuery'' smart constructor.
data DimensionValuesQuery' = DimensionValuesQuery'
    { _dvqQuotaUser   :: !(Maybe Text)
    , _dvqPrettyPrint :: !Bool
    , _dvqUserIP      :: !(Maybe Text)
    , _dvqProFileId   :: !Int64
    , _dvqPayload     :: !DimensionValueRequest
    , _dvqKey         :: !(Maybe Key)
    , _dvqPageToken   :: !(Maybe Text)
    , _dvqOAuthToken  :: !(Maybe OAuthToken)
    , _dvqMaxResults  :: !(Maybe Int32)
    , _dvqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionValuesQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvqQuotaUser'
--
-- * 'dvqPrettyPrint'
--
-- * 'dvqUserIP'
--
-- * 'dvqProFileId'
--
-- * 'dvqPayload'
--
-- * 'dvqKey'
--
-- * 'dvqPageToken'
--
-- * 'dvqOAuthToken'
--
-- * 'dvqMaxResults'
--
-- * 'dvqFields'
dimensionValuesQuery'
    :: Int64 -- ^ 'profileId'
    -> DimensionValueRequest -- ^ 'payload'
    -> DimensionValuesQuery'
dimensionValuesQuery' pDvqProFileId_ pDvqPayload_ =
    DimensionValuesQuery'
    { _dvqQuotaUser = Nothing
    , _dvqPrettyPrint = True
    , _dvqUserIP = Nothing
    , _dvqProFileId = pDvqProFileId_
    , _dvqPayload = pDvqPayload_
    , _dvqKey = Nothing
    , _dvqPageToken = Nothing
    , _dvqOAuthToken = Nothing
    , _dvqMaxResults = Nothing
    , _dvqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dvqQuotaUser :: Lens' DimensionValuesQuery' (Maybe Text)
dvqQuotaUser
  = lens _dvqQuotaUser (\ s a -> s{_dvqQuotaUser = a})

-- | Returns response with indentations and line breaks.
dvqPrettyPrint :: Lens' DimensionValuesQuery' Bool
dvqPrettyPrint
  = lens _dvqPrettyPrint
      (\ s a -> s{_dvqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dvqUserIP :: Lens' DimensionValuesQuery' (Maybe Text)
dvqUserIP
  = lens _dvqUserIP (\ s a -> s{_dvqUserIP = a})

-- | The DFA user profile ID.
dvqProFileId :: Lens' DimensionValuesQuery' Int64
dvqProFileId
  = lens _dvqProFileId (\ s a -> s{_dvqProFileId = a})

-- | Multipart request metadata.
dvqPayload :: Lens' DimensionValuesQuery' DimensionValueRequest
dvqPayload
  = lens _dvqPayload (\ s a -> s{_dvqPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dvqKey :: Lens' DimensionValuesQuery' (Maybe Key)
dvqKey = lens _dvqKey (\ s a -> s{_dvqKey = a})

-- | The value of the nextToken from the previous result page.
dvqPageToken :: Lens' DimensionValuesQuery' (Maybe Text)
dvqPageToken
  = lens _dvqPageToken (\ s a -> s{_dvqPageToken = a})

-- | OAuth 2.0 token for the current user.
dvqOAuthToken :: Lens' DimensionValuesQuery' (Maybe OAuthToken)
dvqOAuthToken
  = lens _dvqOAuthToken
      (\ s a -> s{_dvqOAuthToken = a})

-- | Maximum number of results to return.
dvqMaxResults :: Lens' DimensionValuesQuery' (Maybe Int32)
dvqMaxResults
  = lens _dvqMaxResults
      (\ s a -> s{_dvqMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dvqFields :: Lens' DimensionValuesQuery' (Maybe Text)
dvqFields
  = lens _dvqFields (\ s a -> s{_dvqFields = a})

instance GoogleAuth DimensionValuesQuery' where
        authKey = dvqKey . _Just
        authToken = dvqOAuthToken . _Just

instance GoogleRequest DimensionValuesQuery' where
        type Rs DimensionValuesQuery' = DimensionValueList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DimensionValuesQuery'{..}
          = go _dvqProFileId _dvqPageToken _dvqMaxResults
              _dvqQuotaUser
              (Just _dvqPrettyPrint)
              _dvqUserIP
              _dvqFields
              _dvqKey
              _dvqOAuthToken
              (Just AltJSON)
              _dvqPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DimensionValuesQueryResource)
                      r
                      u
