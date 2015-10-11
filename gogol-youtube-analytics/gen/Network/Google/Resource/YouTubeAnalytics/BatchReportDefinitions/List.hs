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
-- Module      : Network.Google.Resource.YouTubeAnalytics.BatchReportDefinitions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of available batch report definitions.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsBatchReportDefinitionsList@.
module Network.Google.Resource.YouTubeAnalytics.BatchReportDefinitions.List
    (
    -- * REST Resource
      BatchReportDefinitionsListResource

    -- * Creating a Request
    , batchReportDefinitionsList'
    , BatchReportDefinitionsList'

    -- * Request Lenses
    , brdlQuotaUser
    , brdlPrettyPrint
    , brdlUserIP
    , brdlOnBehalfOfContentOwner
    , brdlKey
    , brdlOAuthToken
    , brdlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsBatchReportDefinitionsList@ method which the
-- 'BatchReportDefinitionsList'' request conforms to.
type BatchReportDefinitionsListResource =
     "batchReportDefinitions" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] BatchReportDefinitionList

-- | Retrieves a list of available batch report definitions.
--
-- /See:/ 'batchReportDefinitionsList'' smart constructor.
data BatchReportDefinitionsList' = BatchReportDefinitionsList'
    { _brdlQuotaUser              :: !(Maybe Text)
    , _brdlPrettyPrint            :: !Bool
    , _brdlUserIP                 :: !(Maybe Text)
    , _brdlOnBehalfOfContentOwner :: !Text
    , _brdlKey                    :: !(Maybe AuthKey)
    , _brdlOAuthToken             :: !(Maybe OAuthToken)
    , _brdlFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportDefinitionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdlQuotaUser'
--
-- * 'brdlPrettyPrint'
--
-- * 'brdlUserIP'
--
-- * 'brdlOnBehalfOfContentOwner'
--
-- * 'brdlKey'
--
-- * 'brdlOAuthToken'
--
-- * 'brdlFields'
batchReportDefinitionsList'
    :: Text -- ^ 'onBehalfOfContentOwner'
    -> BatchReportDefinitionsList'
batchReportDefinitionsList' pBrdlOnBehalfOfContentOwner_ =
    BatchReportDefinitionsList'
    { _brdlQuotaUser = Nothing
    , _brdlPrettyPrint = True
    , _brdlUserIP = Nothing
    , _brdlOnBehalfOfContentOwner = pBrdlOnBehalfOfContentOwner_
    , _brdlKey = Nothing
    , _brdlOAuthToken = Nothing
    , _brdlFields = Nothing
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
brdlUserIP :: Lens' BatchReportDefinitionsList' (Maybe Text)
brdlUserIP
  = lens _brdlUserIP (\ s a -> s{_brdlUserIP = a})

-- | The onBehalfOfContentOwner parameter identifies the content owner that
-- the user is acting on behalf of.
brdlOnBehalfOfContentOwner :: Lens' BatchReportDefinitionsList' Text
brdlOnBehalfOfContentOwner
  = lens _brdlOnBehalfOfContentOwner
      (\ s a -> s{_brdlOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brdlKey :: Lens' BatchReportDefinitionsList' (Maybe AuthKey)
brdlKey = lens _brdlKey (\ s a -> s{_brdlKey = a})

-- | OAuth 2.0 token for the current user.
brdlOAuthToken :: Lens' BatchReportDefinitionsList' (Maybe OAuthToken)
brdlOAuthToken
  = lens _brdlOAuthToken
      (\ s a -> s{_brdlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
brdlFields :: Lens' BatchReportDefinitionsList' (Maybe Text)
brdlFields
  = lens _brdlFields (\ s a -> s{_brdlFields = a})

instance GoogleAuth BatchReportDefinitionsList' where
        _AuthKey = brdlKey . _Just
        _AuthToken = brdlOAuthToken . _Just

instance GoogleRequest BatchReportDefinitionsList'
         where
        type Rs BatchReportDefinitionsList' =
             BatchReportDefinitionList
        request = requestWith youTubeAnalyticsRequest
        requestWith rq BatchReportDefinitionsList'{..}
          = go (Just _brdlOnBehalfOfContentOwner)
              _brdlQuotaUser
              (Just _brdlPrettyPrint)
              _brdlUserIP
              _brdlFields
              _brdlKey
              _brdlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy BatchReportDefinitionsListResource)
                      rq
