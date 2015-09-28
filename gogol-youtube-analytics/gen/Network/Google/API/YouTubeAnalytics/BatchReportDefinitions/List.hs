{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTubeAnalytics.BatchReportDefinitions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of available batch report definitions.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.batchReportDefinitions.list@.
module Network.Google.API.YouTubeAnalytics.BatchReportDefinitions.List
    (
    -- * REST Resource
      BatchReportDefinitionsListAPI

    -- * Creating a Request
    , batchReportDefinitionsList'
    , BatchReportDefinitionsList'

    -- * Request Lenses
    , brdlQuotaUser
    , brdlPrettyPrint
    , brdlUserIp
    , brdlOnBehalfOfContentOwner
    , brdlKey
    , brdlOauthToken
    , brdlFields
    , brdlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for youtubeAnalytics.batchReportDefinitions.list which the
-- 'BatchReportDefinitionsList'' request conforms to.
type BatchReportDefinitionsListAPI =
     "batchReportDefinitions" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] BatchReportDefinitionList

-- | Retrieves a list of available batch report definitions.
--
-- /See:/ 'batchReportDefinitionsList'' smart constructor.
data BatchReportDefinitionsList' = BatchReportDefinitionsList'
    { _brdlQuotaUser              :: !(Maybe Text)
    , _brdlPrettyPrint            :: !Bool
    , _brdlUserIp                 :: !(Maybe Text)
    , _brdlOnBehalfOfContentOwner :: !Text
    , _brdlKey                    :: !(Maybe Text)
    , _brdlOauthToken             :: !(Maybe Text)
    , _brdlFields                 :: !(Maybe Text)
    , _brdlAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportDefinitionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdlQuotaUser'
--
-- * 'brdlPrettyPrint'
--
-- * 'brdlUserIp'
--
-- * 'brdlOnBehalfOfContentOwner'
--
-- * 'brdlKey'
--
-- * 'brdlOauthToken'
--
-- * 'brdlFields'
--
-- * 'brdlAlt'
batchReportDefinitionsList'
    :: Text -- ^ 'onBehalfOfContentOwner'
    -> BatchReportDefinitionsList'
batchReportDefinitionsList' pBrdlOnBehalfOfContentOwner_ =
    BatchReportDefinitionsList'
    { _brdlQuotaUser = Nothing
    , _brdlPrettyPrint = True
    , _brdlUserIp = Nothing
    , _brdlOnBehalfOfContentOwner = pBrdlOnBehalfOfContentOwner_
    , _brdlKey = Nothing
    , _brdlOauthToken = Nothing
    , _brdlFields = Nothing
    , _brdlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
brdlQuotaUser :: Lens' BatchReportDefinitionsList' (Maybe Text)
brdlQuotaUser
  = lens _brdlQuotaUser
      (\ s a -> s{_brdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
brdlPrettyPrint :: Lens' BatchReportDefinitionsList' Bool
brdlPrettyPrint
  = lens _brdlPrettyPrint
      (\ s a -> s{_brdlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
brdlUserIp :: Lens' BatchReportDefinitionsList' (Maybe Text)
brdlUserIp
  = lens _brdlUserIp (\ s a -> s{_brdlUserIp = a})

-- | The onBehalfOfContentOwner parameter identifies the content owner that
-- the user is acting on behalf of.
brdlOnBehalfOfContentOwner :: Lens' BatchReportDefinitionsList' Text
brdlOnBehalfOfContentOwner
  = lens _brdlOnBehalfOfContentOwner
      (\ s a -> s{_brdlOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brdlKey :: Lens' BatchReportDefinitionsList' (Maybe Text)
brdlKey = lens _brdlKey (\ s a -> s{_brdlKey = a})

-- | OAuth 2.0 token for the current user.
brdlOauthToken :: Lens' BatchReportDefinitionsList' (Maybe Text)
brdlOauthToken
  = lens _brdlOauthToken
      (\ s a -> s{_brdlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
brdlFields :: Lens' BatchReportDefinitionsList' (Maybe Text)
brdlFields
  = lens _brdlFields (\ s a -> s{_brdlFields = a})

-- | Data format for the response.
brdlAlt :: Lens' BatchReportDefinitionsList' Alt
brdlAlt = lens _brdlAlt (\ s a -> s{_brdlAlt = a})

instance GoogleRequest BatchReportDefinitionsList'
         where
        type Rs BatchReportDefinitionsList' =
             BatchReportDefinitionList
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u BatchReportDefinitionsList'{..}
          = go _brdlQuotaUser (Just _brdlPrettyPrint)
              _brdlUserIp
              (Just _brdlOnBehalfOfContentOwner)
              _brdlKey
              _brdlOauthToken
              _brdlFields
              (Just _brdlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BatchReportDefinitionsListAPI)
                      r
                      u
