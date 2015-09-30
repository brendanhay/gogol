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
-- Module      : Network.Google.Resource.Prediction.Trainedmodels.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add new data to a trained model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedmodelsUpdate@.
module Network.Google.Resource.Prediction.Trainedmodels.Update
    (
    -- * REST Resource
      TrainedmodelsUpdateResource

    -- * Creating a Request
    , trainedmodelsUpdate'
    , TrainedmodelsUpdate'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuProject
    , tuUserIp
    , tuKey
    , tuId
    , tuOauthToken
    , tuFields
    , tuAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedmodelsUpdate@ which the
-- 'TrainedmodelsUpdate'' request conforms to.
type TrainedmodelsUpdateResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Insert2

-- | Add new data to a trained model.
--
-- /See:/ 'trainedmodelsUpdate'' smart constructor.
data TrainedmodelsUpdate' = TrainedmodelsUpdate'
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuProject     :: !Text
    , _tuUserIp      :: !(Maybe Text)
    , _tuKey         :: !(Maybe Text)
    , _tuId          :: !Text
    , _tuOauthToken  :: !(Maybe Text)
    , _tuFields      :: !(Maybe Text)
    , _tuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedmodelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuProject'
--
-- * 'tuUserIp'
--
-- * 'tuKey'
--
-- * 'tuId'
--
-- * 'tuOauthToken'
--
-- * 'tuFields'
--
-- * 'tuAlt'
trainedmodelsUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedmodelsUpdate'
trainedmodelsUpdate' pTuProject_ pTuId_ =
    TrainedmodelsUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuProject = pTuProject_
    , _tuUserIp = Nothing
    , _tuKey = Nothing
    , _tuId = pTuId_
    , _tuOauthToken = Nothing
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TrainedmodelsUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TrainedmodelsUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | The project associated with the model.
tuProject :: Lens' TrainedmodelsUpdate' Text
tuProject
  = lens _tuProject (\ s a -> s{_tuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TrainedmodelsUpdate' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TrainedmodelsUpdate' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | The unique name for the predictive model.
tuId :: Lens' TrainedmodelsUpdate' Text
tuId = lens _tuId (\ s a -> s{_tuId = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TrainedmodelsUpdate' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TrainedmodelsUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TrainedmodelsUpdate' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TrainedmodelsUpdate' where
        type Rs TrainedmodelsUpdate' = Insert2
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedmodelsUpdate'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuProject
              _tuUserIp
              _tuKey
              _tuId
              _tuOauthToken
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedmodelsUpdateResource)
                      r
                      u
