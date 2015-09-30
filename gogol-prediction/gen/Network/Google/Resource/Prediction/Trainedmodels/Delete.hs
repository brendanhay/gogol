{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Prediction.Trainedmodels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a trained model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedmodelsDelete@.
module Prediction.Trainedmodels.Delete
    (
    -- * REST Resource
      TrainedmodelsDeleteAPI

    -- * Creating a Request
    , trainedmodelsDelete
    , TrainedmodelsDelete

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdProject
    , tdUserIp
    , tdKey
    , tdId
    , tdOauthToken
    , tdFields
    , tdAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedmodelsDelete@ which the
-- 'TrainedmodelsDelete' request conforms to.
type TrainedmodelsDeleteAPI =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :> Delete '[JSON] ()

-- | Delete a trained model.
--
-- /See:/ 'trainedmodelsDelete' smart constructor.
data TrainedmodelsDelete = TrainedmodelsDelete
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdProject     :: !Text
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdId          :: !Text
    , _tdOauthToken  :: !(Maybe Text)
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedmodelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdProject'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdId'
--
-- * 'tdOauthToken'
--
-- * 'tdFields'
--
-- * 'tdAlt'
trainedmodelsDelete
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedmodelsDelete
trainedmodelsDelete pTdProject_ pTdId_ =
    TrainedmodelsDelete
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdProject = pTdProject_
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdId = pTdId_
    , _tdOauthToken = Nothing
    , _tdFields = Nothing
    , _tdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TrainedmodelsDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TrainedmodelsDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | The project associated with the model.
tdProject :: Lens' TrainedmodelsDelete' Text
tdProject
  = lens _tdProject (\ s a -> s{_tdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TrainedmodelsDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TrainedmodelsDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | The unique name for the predictive model.
tdId :: Lens' TrainedmodelsDelete' Text
tdId = lens _tdId (\ s a -> s{_tdId = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TrainedmodelsDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TrainedmodelsDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TrainedmodelsDelete' Text
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TrainedmodelsDelete' where
        type Rs TrainedmodelsDelete' = ()
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedmodelsDelete{..}
          = go _tdQuotaUser _tdPrettyPrint _tdProject _tdUserIp
              _tdKey
              _tdId
              _tdOauthToken
              _tdFields
              _tdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedmodelsDeleteAPI)
                      r
                      u
