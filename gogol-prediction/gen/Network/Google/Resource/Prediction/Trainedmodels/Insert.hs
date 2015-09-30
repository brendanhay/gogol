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
-- Module      : Network.Google.Resource.Prediction.Trainedmodels.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Train a Prediction API model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedmodelsInsert@.
module Network.Google.Resource.Prediction.Trainedmodels.Insert
    (
    -- * REST Resource
      TrainedmodelsInsertResource

    -- * Creating a Request
    , trainedmodelsInsert'
    , TrainedmodelsInsert'

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiProject
    , tiUserIp
    , tiKey
    , tiOauthToken
    , tiFields
    , tiAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedmodelsInsert@ which the
-- 'TrainedmodelsInsert'' request conforms to.
type TrainedmodelsInsertResource =
     Capture "project" Text :>
       "trainedmodels" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Insert2

-- | Train a Prediction API model.
--
-- /See:/ 'trainedmodelsInsert'' smart constructor.
data TrainedmodelsInsert' = TrainedmodelsInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiProject     :: !Text
    , _tiUserIp      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Text)
    , _tiOauthToken  :: !(Maybe Text)
    , _tiFields      :: !(Maybe Text)
    , _tiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedmodelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiProject'
--
-- * 'tiUserIp'
--
-- * 'tiKey'
--
-- * 'tiOauthToken'
--
-- * 'tiFields'
--
-- * 'tiAlt'
trainedmodelsInsert'
    :: Text -- ^ 'project'
    -> TrainedmodelsInsert'
trainedmodelsInsert' pTiProject_ =
    TrainedmodelsInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiProject = pTiProject_
    , _tiUserIp = Nothing
    , _tiKey = Nothing
    , _tiOauthToken = Nothing
    , _tiFields = Nothing
    , _tiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TrainedmodelsInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TrainedmodelsInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | The project associated with the model.
tiProject :: Lens' TrainedmodelsInsert' Text
tiProject
  = lens _tiProject (\ s a -> s{_tiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIp :: Lens' TrainedmodelsInsert' (Maybe Text)
tiUserIp = lens _tiUserIp (\ s a -> s{_tiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TrainedmodelsInsert' (Maybe Text)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOauthToken :: Lens' TrainedmodelsInsert' (Maybe Text)
tiOauthToken
  = lens _tiOauthToken (\ s a -> s{_tiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TrainedmodelsInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Data format for the response.
tiAlt :: Lens' TrainedmodelsInsert' Alt
tiAlt = lens _tiAlt (\ s a -> s{_tiAlt = a})

instance GoogleRequest TrainedmodelsInsert' where
        type Rs TrainedmodelsInsert' = Insert2
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedmodelsInsert'{..}
          = go _tiQuotaUser (Just _tiPrettyPrint) _tiProject
              _tiUserIp
              _tiKey
              _tiOauthToken
              _tiFields
              (Just _tiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedmodelsInsertResource)
                      r
                      u
