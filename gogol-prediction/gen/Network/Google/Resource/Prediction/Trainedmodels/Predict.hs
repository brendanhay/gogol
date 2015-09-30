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
-- Module      : Network.Google.Resource.Prediction.Trainedmodels.Predict
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submit model id and request a prediction.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedmodelsPredict@.
module Network.Google.Resource.Prediction.Trainedmodels.Predict
    (
    -- * REST Resource
      TrainedmodelsPredictResource

    -- * Creating a Request
    , trainedmodelsPredict'
    , TrainedmodelsPredict'

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpProject
    , tpUserIp
    , tpKey
    , tpId
    , tpOauthToken
    , tpFields
    , tpAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedmodelsPredict@ which the
-- 'TrainedmodelsPredict'' request conforms to.
type TrainedmodelsPredictResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           "predict" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Output

-- | Submit model id and request a prediction.
--
-- /See:/ 'trainedmodelsPredict'' smart constructor.
data TrainedmodelsPredict' = TrainedmodelsPredict'
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpProject     :: !Text
    , _tpUserIp      :: !(Maybe Text)
    , _tpKey         :: !(Maybe Text)
    , _tpId          :: !Text
    , _tpOauthToken  :: !(Maybe Text)
    , _tpFields      :: !(Maybe Text)
    , _tpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedmodelsPredict'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpProject'
--
-- * 'tpUserIp'
--
-- * 'tpKey'
--
-- * 'tpId'
--
-- * 'tpOauthToken'
--
-- * 'tpFields'
--
-- * 'tpAlt'
trainedmodelsPredict'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedmodelsPredict'
trainedmodelsPredict' pTpProject_ pTpId_ =
    TrainedmodelsPredict'
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpProject = pTpProject_
    , _tpUserIp = Nothing
    , _tpKey = Nothing
    , _tpId = pTpId_
    , _tpOauthToken = Nothing
    , _tpFields = Nothing
    , _tpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TrainedmodelsPredict' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TrainedmodelsPredict' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | The project associated with the model.
tpProject :: Lens' TrainedmodelsPredict' Text
tpProject
  = lens _tpProject (\ s a -> s{_tpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIp :: Lens' TrainedmodelsPredict' (Maybe Text)
tpUserIp = lens _tpUserIp (\ s a -> s{_tpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TrainedmodelsPredict' (Maybe Text)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | The unique name for the predictive model.
tpId :: Lens' TrainedmodelsPredict' Text
tpId = lens _tpId (\ s a -> s{_tpId = a})

-- | OAuth 2.0 token for the current user.
tpOauthToken :: Lens' TrainedmodelsPredict' (Maybe Text)
tpOauthToken
  = lens _tpOauthToken (\ s a -> s{_tpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TrainedmodelsPredict' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

-- | Data format for the response.
tpAlt :: Lens' TrainedmodelsPredict' Alt
tpAlt = lens _tpAlt (\ s a -> s{_tpAlt = a})

instance GoogleRequest TrainedmodelsPredict' where
        type Rs TrainedmodelsPredict' = Output
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedmodelsPredict'{..}
          = go _tpQuotaUser (Just _tpPrettyPrint) _tpProject
              _tpUserIp
              _tpKey
              _tpId
              _tpOauthToken
              _tpFields
              (Just _tpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedmodelsPredictResource)
                      r
                      u
