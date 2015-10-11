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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Analyze
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get analysis of the model and the data the model was trained on.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsAnalyze@.
module Network.Google.Resource.Prediction.TrainedModels.Analyze
    (
    -- * REST Resource
      TrainedModelsAnalyzeResource

    -- * Creating a Request
    , trainedModelsAnalyze'
    , TrainedModelsAnalyze'

    -- * Request Lenses
    , tmaQuotaUser
    , tmaPrettyPrint
    , tmaProject
    , tmaUserIP
    , tmaKey
    , tmaId
    , tmaOAuthToken
    , tmaFields
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsAnalyze@ method which the
-- 'TrainedModelsAnalyze'' request conforms to.
type TrainedModelsAnalyzeResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           "analyze" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Analyze

-- | Get analysis of the model and the data the model was trained on.
--
-- /See:/ 'trainedModelsAnalyze'' smart constructor.
data TrainedModelsAnalyze' = TrainedModelsAnalyze'
    { _tmaQuotaUser   :: !(Maybe Text)
    , _tmaPrettyPrint :: !Bool
    , _tmaProject     :: !Text
    , _tmaUserIP      :: !(Maybe Text)
    , _tmaKey         :: !(Maybe AuthKey)
    , _tmaId          :: !Text
    , _tmaOAuthToken  :: !(Maybe OAuthToken)
    , _tmaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsAnalyze'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmaQuotaUser'
--
-- * 'tmaPrettyPrint'
--
-- * 'tmaProject'
--
-- * 'tmaUserIP'
--
-- * 'tmaKey'
--
-- * 'tmaId'
--
-- * 'tmaOAuthToken'
--
-- * 'tmaFields'
trainedModelsAnalyze'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedModelsAnalyze'
trainedModelsAnalyze' pTmaProject_ pTmaId_ =
    TrainedModelsAnalyze'
    { _tmaQuotaUser = Nothing
    , _tmaPrettyPrint = True
    , _tmaProject = pTmaProject_
    , _tmaUserIP = Nothing
    , _tmaKey = Nothing
    , _tmaId = pTmaId_
    , _tmaOAuthToken = Nothing
    , _tmaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tmaQuotaUser :: Lens' TrainedModelsAnalyze' (Maybe Text)
tmaQuotaUser
  = lens _tmaQuotaUser (\ s a -> s{_tmaQuotaUser = a})

-- | Returns response with indentations and line breaks.
tmaPrettyPrint :: Lens' TrainedModelsAnalyze' Bool
tmaPrettyPrint
  = lens _tmaPrettyPrint
      (\ s a -> s{_tmaPrettyPrint = a})

-- | The project associated with the model.
tmaProject :: Lens' TrainedModelsAnalyze' Text
tmaProject
  = lens _tmaProject (\ s a -> s{_tmaProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tmaUserIP :: Lens' TrainedModelsAnalyze' (Maybe Text)
tmaUserIP
  = lens _tmaUserIP (\ s a -> s{_tmaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tmaKey :: Lens' TrainedModelsAnalyze' (Maybe AuthKey)
tmaKey = lens _tmaKey (\ s a -> s{_tmaKey = a})

-- | The unique name for the predictive model.
tmaId :: Lens' TrainedModelsAnalyze' Text
tmaId = lens _tmaId (\ s a -> s{_tmaId = a})

-- | OAuth 2.0 token for the current user.
tmaOAuthToken :: Lens' TrainedModelsAnalyze' (Maybe OAuthToken)
tmaOAuthToken
  = lens _tmaOAuthToken
      (\ s a -> s{_tmaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tmaFields :: Lens' TrainedModelsAnalyze' (Maybe Text)
tmaFields
  = lens _tmaFields (\ s a -> s{_tmaFields = a})

instance GoogleAuth TrainedModelsAnalyze' where
        _AuthKey = tmaKey . _Just
        _AuthToken = tmaOAuthToken . _Just

instance GoogleRequest TrainedModelsAnalyze' where
        type Rs TrainedModelsAnalyze' = Analyze
        request = requestWith predictionRequest
        requestWith rq TrainedModelsAnalyze'{..}
          = go _tmaProject _tmaId _tmaQuotaUser
              (Just _tmaPrettyPrint)
              _tmaUserIP
              _tmaFields
              _tmaKey
              _tmaOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TrainedModelsAnalyzeResource)
                      rq
