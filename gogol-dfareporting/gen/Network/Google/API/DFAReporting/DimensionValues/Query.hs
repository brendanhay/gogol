{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.DimensionValues.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.dimensionValues.query@.
module Network.Google.API.DFAReporting.DimensionValues.Query
    (
    -- * REST Resource
      DimensionValuesQueryAPI

    -- * Creating a Request
    , dimensionValuesQuery'
    , DimensionValuesQuery'

    -- * Request Lenses
    , dvqQuotaUser
    , dvqPrettyPrint
    , dvqUserIp
    , dvqProfileId
    , dvqKey
    , dvqPageToken
    , dvqOauthToken
    , dvqMaxResults
    , dvqFields
    , dvqAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.dimensionValues.query which the
-- 'DimensionValuesQuery'' request conforms to.
type DimensionValuesQueryAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "dimensionvalues" :>
           "query" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Post '[JSON] DimensionValueList

-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ 'dimensionValuesQuery'' smart constructor.
data DimensionValuesQuery' = DimensionValuesQuery'
    { _dvqQuotaUser   :: !(Maybe Text)
    , _dvqPrettyPrint :: !Bool
    , _dvqUserIp      :: !(Maybe Text)
    , _dvqProfileId   :: !Int64
    , _dvqKey         :: !(Maybe Text)
    , _dvqPageToken   :: !(Maybe Text)
    , _dvqOauthToken  :: !(Maybe Text)
    , _dvqMaxResults  :: !(Maybe Int32)
    , _dvqFields      :: !(Maybe Text)
    , _dvqAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionValuesQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvqQuotaUser'
--
-- * 'dvqPrettyPrint'
--
-- * 'dvqUserIp'
--
-- * 'dvqProfileId'
--
-- * 'dvqKey'
--
-- * 'dvqPageToken'
--
-- * 'dvqOauthToken'
--
-- * 'dvqMaxResults'
--
-- * 'dvqFields'
--
-- * 'dvqAlt'
dimensionValuesQuery'
    :: Int64 -- ^ 'profileId'
    -> DimensionValuesQuery'
dimensionValuesQuery' pDvqProfileId_ =
    DimensionValuesQuery'
    { _dvqQuotaUser = Nothing
    , _dvqPrettyPrint = True
    , _dvqUserIp = Nothing
    , _dvqProfileId = pDvqProfileId_
    , _dvqKey = Nothing
    , _dvqPageToken = Nothing
    , _dvqOauthToken = Nothing
    , _dvqMaxResults = Nothing
    , _dvqFields = Nothing
    , _dvqAlt = JSON
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
dvqUserIp :: Lens' DimensionValuesQuery' (Maybe Text)
dvqUserIp
  = lens _dvqUserIp (\ s a -> s{_dvqUserIp = a})

-- | The DFA user profile ID.
dvqProfileId :: Lens' DimensionValuesQuery' Int64
dvqProfileId
  = lens _dvqProfileId (\ s a -> s{_dvqProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dvqKey :: Lens' DimensionValuesQuery' (Maybe Text)
dvqKey = lens _dvqKey (\ s a -> s{_dvqKey = a})

-- | The value of the nextToken from the previous result page.
dvqPageToken :: Lens' DimensionValuesQuery' (Maybe Text)
dvqPageToken
  = lens _dvqPageToken (\ s a -> s{_dvqPageToken = a})

-- | OAuth 2.0 token for the current user.
dvqOauthToken :: Lens' DimensionValuesQuery' (Maybe Text)
dvqOauthToken
  = lens _dvqOauthToken
      (\ s a -> s{_dvqOauthToken = a})

-- | Maximum number of results to return.
dvqMaxResults :: Lens' DimensionValuesQuery' (Maybe Int32)
dvqMaxResults
  = lens _dvqMaxResults
      (\ s a -> s{_dvqMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dvqFields :: Lens' DimensionValuesQuery' (Maybe Text)
dvqFields
  = lens _dvqFields (\ s a -> s{_dvqFields = a})

-- | Data format for the response.
dvqAlt :: Lens' DimensionValuesQuery' Alt
dvqAlt = lens _dvqAlt (\ s a -> s{_dvqAlt = a})

instance GoogleRequest DimensionValuesQuery' where
        type Rs DimensionValuesQuery' = DimensionValueList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DimensionValuesQuery'{..}
          = go _dvqQuotaUser (Just _dvqPrettyPrint) _dvqUserIp
              _dvqProfileId
              _dvqKey
              _dvqPageToken
              _dvqOauthToken
              _dvqMaxResults
              _dvqFields
              (Just _dvqAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DimensionValuesQueryAPI)
                      r
                      u
