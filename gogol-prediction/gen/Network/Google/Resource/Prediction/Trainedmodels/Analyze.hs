{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Prediction.Trainedmodels.Analyze
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get analysis of the model and the data the model was trained on.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedmodelsAnalyze@.
module Network.Google.Resource.Prediction.Trainedmodels.Analyze
    (
    -- * REST Resource
      TrainedmodelsAnalyzeResource

    -- * Creating a Request
    , trainedmodelsAnalyze'
    , TrainedmodelsAnalyze'

    -- * Request Lenses
    , taQuotaUser
    , taPrettyPrint
    , taProject
    , taUserIp
    , taKey
    , taId
    , taOauthToken
    , taFields
    , taAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedmodelsAnalyze@ which the
-- 'TrainedmodelsAnalyze'' request conforms to.
type TrainedmodelsAnalyzeResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           "analyze" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Analyze

-- | Get analysis of the model and the data the model was trained on.
--
-- /See:/ 'trainedmodelsAnalyze'' smart constructor.
data TrainedmodelsAnalyze' = TrainedmodelsAnalyze'
    { _taQuotaUser   :: !(Maybe Text)
    , _taPrettyPrint :: !Bool
    , _taProject     :: !Text
    , _taUserIp      :: !(Maybe Text)
    , _taKey         :: !(Maybe Text)
    , _taId          :: !Text
    , _taOauthToken  :: !(Maybe Text)
    , _taFields      :: !(Maybe Text)
    , _taAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedmodelsAnalyze'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taQuotaUser'
--
-- * 'taPrettyPrint'
--
-- * 'taProject'
--
-- * 'taUserIp'
--
-- * 'taKey'
--
-- * 'taId'
--
-- * 'taOauthToken'
--
-- * 'taFields'
--
-- * 'taAlt'
trainedmodelsAnalyze'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedmodelsAnalyze'
trainedmodelsAnalyze' pTaProject_ pTaId_ =
    TrainedmodelsAnalyze'
    { _taQuotaUser = Nothing
    , _taPrettyPrint = True
    , _taProject = pTaProject_
    , _taUserIp = Nothing
    , _taKey = Nothing
    , _taId = pTaId_
    , _taOauthToken = Nothing
    , _taFields = Nothing
    , _taAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
taQuotaUser :: Lens' TrainedmodelsAnalyze' (Maybe Text)
taQuotaUser
  = lens _taQuotaUser (\ s a -> s{_taQuotaUser = a})

-- | Returns response with indentations and line breaks.
taPrettyPrint :: Lens' TrainedmodelsAnalyze' Bool
taPrettyPrint
  = lens _taPrettyPrint
      (\ s a -> s{_taPrettyPrint = a})

-- | The project associated with the model.
taProject :: Lens' TrainedmodelsAnalyze' Text
taProject
  = lens _taProject (\ s a -> s{_taProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
taUserIp :: Lens' TrainedmodelsAnalyze' (Maybe Text)
taUserIp = lens _taUserIp (\ s a -> s{_taUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
taKey :: Lens' TrainedmodelsAnalyze' (Maybe Text)
taKey = lens _taKey (\ s a -> s{_taKey = a})

-- | The unique name for the predictive model.
taId :: Lens' TrainedmodelsAnalyze' Text
taId = lens _taId (\ s a -> s{_taId = a})

-- | OAuth 2.0 token for the current user.
taOauthToken :: Lens' TrainedmodelsAnalyze' (Maybe Text)
taOauthToken
  = lens _taOauthToken (\ s a -> s{_taOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
taFields :: Lens' TrainedmodelsAnalyze' (Maybe Text)
taFields = lens _taFields (\ s a -> s{_taFields = a})

-- | Data format for the response.
taAlt :: Lens' TrainedmodelsAnalyze' Alt
taAlt = lens _taAlt (\ s a -> s{_taAlt = a})

instance GoogleRequest TrainedmodelsAnalyze' where
        type Rs TrainedmodelsAnalyze' = Analyze
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedmodelsAnalyze'{..}
          = go _taQuotaUser (Just _taPrettyPrint) _taProject
              _taUserIp
              _taKey
              _taId
              _taOauthToken
              _taFields
              (Just _taAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedmodelsAnalyzeResource)
                      r
                      u
