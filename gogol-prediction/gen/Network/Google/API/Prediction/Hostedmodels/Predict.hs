{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Prediction.Hostedmodels.Predict
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submit input and request an output against a hosted model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @prediction.hostedmodels.predict@.
module Network.Google.API.Prediction.Hostedmodels.Predict
    (
    -- * REST Resource
      HostedmodelsPredictAPI

    -- * Creating a Request
    , hostedmodelsPredict'
    , HostedmodelsPredict'

    -- * Request Lenses
    , hpQuotaUser
    , hpPrettyPrint
    , hpProject
    , hpUserIp
    , hpKey
    , hpOauthToken
    , hpFields
    , hpHostedModelName
    , hpAlt
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for prediction.hostedmodels.predict which the
-- 'HostedmodelsPredict'' request conforms to.
type HostedmodelsPredictAPI =
     Capture "project" Text :>
       "hostedmodels" :>
         Capture "hostedModelName" Text :>
           "predict" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Output

-- | Submit input and request an output against a hosted model.
--
-- /See:/ 'hostedmodelsPredict'' smart constructor.
data HostedmodelsPredict' = HostedmodelsPredict'
    { _hpQuotaUser       :: !(Maybe Text)
    , _hpPrettyPrint     :: !Bool
    , _hpProject         :: !Text
    , _hpUserIp          :: !(Maybe Text)
    , _hpKey             :: !(Maybe Text)
    , _hpOauthToken      :: !(Maybe Text)
    , _hpFields          :: !(Maybe Text)
    , _hpHostedModelName :: !Text
    , _hpAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HostedmodelsPredict'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpQuotaUser'
--
-- * 'hpPrettyPrint'
--
-- * 'hpProject'
--
-- * 'hpUserIp'
--
-- * 'hpKey'
--
-- * 'hpOauthToken'
--
-- * 'hpFields'
--
-- * 'hpHostedModelName'
--
-- * 'hpAlt'
hostedmodelsPredict'
    :: Text -- ^ 'project'
    -> Text -- ^ 'hostedModelName'
    -> HostedmodelsPredict'
hostedmodelsPredict' pHpProject_ pHpHostedModelName_ =
    HostedmodelsPredict'
    { _hpQuotaUser = Nothing
    , _hpPrettyPrint = True
    , _hpProject = pHpProject_
    , _hpUserIp = Nothing
    , _hpKey = Nothing
    , _hpOauthToken = Nothing
    , _hpFields = Nothing
    , _hpHostedModelName = pHpHostedModelName_
    , _hpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
hpQuotaUser :: Lens' HostedmodelsPredict' (Maybe Text)
hpQuotaUser
  = lens _hpQuotaUser (\ s a -> s{_hpQuotaUser = a})

-- | Returns response with indentations and line breaks.
hpPrettyPrint :: Lens' HostedmodelsPredict' Bool
hpPrettyPrint
  = lens _hpPrettyPrint
      (\ s a -> s{_hpPrettyPrint = a})

-- | The project associated with the model.
hpProject :: Lens' HostedmodelsPredict' Text
hpProject
  = lens _hpProject (\ s a -> s{_hpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
hpUserIp :: Lens' HostedmodelsPredict' (Maybe Text)
hpUserIp = lens _hpUserIp (\ s a -> s{_hpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
hpKey :: Lens' HostedmodelsPredict' (Maybe Text)
hpKey = lens _hpKey (\ s a -> s{_hpKey = a})

-- | OAuth 2.0 token for the current user.
hpOauthToken :: Lens' HostedmodelsPredict' (Maybe Text)
hpOauthToken
  = lens _hpOauthToken (\ s a -> s{_hpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
hpFields :: Lens' HostedmodelsPredict' (Maybe Text)
hpFields = lens _hpFields (\ s a -> s{_hpFields = a})

-- | The name of a hosted model.
hpHostedModelName :: Lens' HostedmodelsPredict' Text
hpHostedModelName
  = lens _hpHostedModelName
      (\ s a -> s{_hpHostedModelName = a})

-- | Data format for the response.
hpAlt :: Lens' HostedmodelsPredict' Alt
hpAlt = lens _hpAlt (\ s a -> s{_hpAlt = a})

instance GoogleRequest HostedmodelsPredict' where
        type Rs HostedmodelsPredict' = Output
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u HostedmodelsPredict'{..}
          = go _hpQuotaUser (Just _hpPrettyPrint) _hpProject
              _hpUserIp
              _hpKey
              _hpOauthToken
              _hpFields
              _hpHostedModelName
              (Just _hpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HostedmodelsPredictAPI)
                      r
                      u
