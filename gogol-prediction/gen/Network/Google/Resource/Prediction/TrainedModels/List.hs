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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List available models.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsList@.
module Network.Google.Resource.Prediction.TrainedModels.List
    (
    -- * REST Resource
      TrainedModelsListResource

    -- * Creating a Request
    , trainedModelsList'
    , TrainedModelsList'

    -- * Request Lenses
    , tmlQuotaUser
    , tmlPrettyPrint
    , tmlProject
    , tmlUserIP
    , tmlKey
    , tmlPageToken
    , tmlOAuthToken
    , tmlMaxResults
    , tmlFields
    ) where

import Network.Google.Prediction.Types
import Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsList@ which the
-- 'TrainedModelsList'' request conforms to.
type TrainedModelsListResource =
     Capture "project" Text :>
       "trainedmodels" :>
         "list" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] List

-- | List available models.
--
-- /See:/ 'trainedModelsList'' smart constructor.
data TrainedModelsList' = TrainedModelsList'
    { _tmlQuotaUser :: !(Maybe Text)
    , _tmlPrettyPrint :: !Bool
    , _tmlProject :: !Text
    , _tmlUserIP :: !(Maybe Text)
    , _tmlKey :: !(Maybe Key)
    , _tmlPageToken :: !(Maybe Text)
    , _tmlOAuthToken :: !(Maybe OAuthToken)
    , _tmlMaxResults :: !(Maybe Word32)
    , _tmlFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmlQuotaUser'
--
-- * 'tmlPrettyPrint'
--
-- * 'tmlProject'
--
-- * 'tmlUserIP'
--
-- * 'tmlKey'
--
-- * 'tmlPageToken'
--
-- * 'tmlOAuthToken'
--
-- * 'tmlMaxResults'
--
-- * 'tmlFields'
trainedModelsList'
    :: Text -- ^ 'project'
    -> TrainedModelsList'
trainedModelsList' pTmlProject_ = 
    TrainedModelsList'
    { _tmlQuotaUser = Nothing
    , _tmlPrettyPrint = True
    , _tmlProject = pTmlProject_
    , _tmlUserIP = Nothing
    , _tmlKey = Nothing
    , _tmlPageToken = Nothing
    , _tmlOAuthToken = Nothing
    , _tmlMaxResults = Nothing
    , _tmlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tmlQuotaUser :: Lens' TrainedModelsList' (Maybe Text)
tmlQuotaUser
  = lens _tmlQuotaUser (\ s a -> s{_tmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tmlPrettyPrint :: Lens' TrainedModelsList' Bool
tmlPrettyPrint
  = lens _tmlPrettyPrint
      (\ s a -> s{_tmlPrettyPrint = a})

-- | The project associated with the model.
tmlProject :: Lens' TrainedModelsList' Text
tmlProject
  = lens _tmlProject (\ s a -> s{_tmlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tmlUserIP :: Lens' TrainedModelsList' (Maybe Text)
tmlUserIP
  = lens _tmlUserIP (\ s a -> s{_tmlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tmlKey :: Lens' TrainedModelsList' (Maybe Key)
tmlKey = lens _tmlKey (\ s a -> s{_tmlKey = a})

-- | Pagination token.
tmlPageToken :: Lens' TrainedModelsList' (Maybe Text)
tmlPageToken
  = lens _tmlPageToken (\ s a -> s{_tmlPageToken = a})

-- | OAuth 2.0 token for the current user.
tmlOAuthToken :: Lens' TrainedModelsList' (Maybe OAuthToken)
tmlOAuthToken
  = lens _tmlOAuthToken
      (\ s a -> s{_tmlOAuthToken = a})

-- | Maximum number of results to return.
tmlMaxResults :: Lens' TrainedModelsList' (Maybe Word32)
tmlMaxResults
  = lens _tmlMaxResults
      (\ s a -> s{_tmlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tmlFields :: Lens' TrainedModelsList' (Maybe Text)
tmlFields
  = lens _tmlFields (\ s a -> s{_tmlFields = a})

instance GoogleAuth TrainedModelsList' where
        authKey = tmlKey . _Just
        authToken = tmlOAuthToken . _Just

instance GoogleRequest TrainedModelsList' where
        type Rs TrainedModelsList' = List
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedModelsList'{..}
          = go _tmlProject _tmlPageToken _tmlMaxResults
              _tmlQuotaUser
              (Just _tmlPrettyPrint)
              _tmlUserIP
              _tmlFields
              _tmlKey
              _tmlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedModelsListResource)
                      r
                      u
