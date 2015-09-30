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
-- Module      : Network.Google.Resource.Prediction.Trainedmodels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Check training status of your model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedmodelsGet@.
module Network.Google.Resource.Prediction.Trainedmodels.Get
    (
    -- * REST Resource
      TrainedmodelsGetResource

    -- * Creating a Request
    , trainedmodelsGet'
    , TrainedmodelsGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgProject
    , tgUserIp
    , tgKey
    , tgId
    , tgOauthToken
    , tgFields
    , tgAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedmodelsGet@ which the
-- 'TrainedmodelsGet'' request conforms to.
type TrainedmodelsGetResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Insert2

-- | Check training status of your model.
--
-- /See:/ 'trainedmodelsGet'' smart constructor.
data TrainedmodelsGet' = TrainedmodelsGet'
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgProject     :: !Text
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgId          :: !Text
    , _tgOauthToken  :: !(Maybe Text)
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedmodelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgProject'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgId'
--
-- * 'tgOauthToken'
--
-- * 'tgFields'
--
-- * 'tgAlt'
trainedmodelsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedmodelsGet'
trainedmodelsGet' pTgProject_ pTgId_ =
    TrainedmodelsGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgProject = pTgProject_
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgId = pTgId_
    , _tgOauthToken = Nothing
    , _tgFields = Nothing
    , _tgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TrainedmodelsGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TrainedmodelsGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | The project associated with the model.
tgProject :: Lens' TrainedmodelsGet' Text
tgProject
  = lens _tgProject (\ s a -> s{_tgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TrainedmodelsGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TrainedmodelsGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | The unique name for the predictive model.
tgId :: Lens' TrainedmodelsGet' Text
tgId = lens _tgId (\ s a -> s{_tgId = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TrainedmodelsGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TrainedmodelsGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TrainedmodelsGet' Alt
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TrainedmodelsGet' where
        type Rs TrainedmodelsGet' = Insert2
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedmodelsGet'{..}
          = go _tgQuotaUser (Just _tgPrettyPrint) _tgProject
              _tgUserIp
              _tgKey
              _tgId
              _tgOauthToken
              _tgFields
              (Just _tgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedmodelsGetResource)
                      r
                      u
