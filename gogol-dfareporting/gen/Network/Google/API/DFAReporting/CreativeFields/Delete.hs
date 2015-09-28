{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.CreativeFields.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFields.delete@.
module Network.Google.API.DFAReporting.CreativeFields.Delete
    (
    -- * REST Resource
      CreativeFieldsDeleteAPI

    -- * Creating a Request
    , creativeFieldsDelete'
    , CreativeFieldsDelete'

    -- * Request Lenses
    , cfdQuotaUser
    , cfdPrettyPrint
    , cfdUserIp
    , cfdProfileId
    , cfdKey
    , cfdId
    , cfdOauthToken
    , cfdFields
    , cfdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.creativeFields.delete which the
-- 'CreativeFieldsDelete'' request conforms to.
type CreativeFieldsDeleteAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing creative field.
--
-- /See:/ 'creativeFieldsDelete'' smart constructor.
data CreativeFieldsDelete' = CreativeFieldsDelete'
    { _cfdQuotaUser   :: !(Maybe Text)
    , _cfdPrettyPrint :: !Bool
    , _cfdUserIp      :: !(Maybe Text)
    , _cfdProfileId   :: !Int64
    , _cfdKey         :: !(Maybe Text)
    , _cfdId          :: !Int64
    , _cfdOauthToken  :: !(Maybe Text)
    , _cfdFields      :: !(Maybe Text)
    , _cfdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdQuotaUser'
--
-- * 'cfdPrettyPrint'
--
-- * 'cfdUserIp'
--
-- * 'cfdProfileId'
--
-- * 'cfdKey'
--
-- * 'cfdId'
--
-- * 'cfdOauthToken'
--
-- * 'cfdFields'
--
-- * 'cfdAlt'
creativeFieldsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldsDelete'
creativeFieldsDelete' pCfdProfileId_ pCfdId_ =
    CreativeFieldsDelete'
    { _cfdQuotaUser = Nothing
    , _cfdPrettyPrint = True
    , _cfdUserIp = Nothing
    , _cfdProfileId = pCfdProfileId_
    , _cfdKey = Nothing
    , _cfdId = pCfdId_
    , _cfdOauthToken = Nothing
    , _cfdFields = Nothing
    , _cfdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfdQuotaUser :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdQuotaUser
  = lens _cfdQuotaUser (\ s a -> s{_cfdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfdPrettyPrint :: Lens' CreativeFieldsDelete' Bool
cfdPrettyPrint
  = lens _cfdPrettyPrint
      (\ s a -> s{_cfdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfdUserIp :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdUserIp
  = lens _cfdUserIp (\ s a -> s{_cfdUserIp = a})

-- | User profile ID associated with this request.
cfdProfileId :: Lens' CreativeFieldsDelete' Int64
cfdProfileId
  = lens _cfdProfileId (\ s a -> s{_cfdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfdKey :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdKey = lens _cfdKey (\ s a -> s{_cfdKey = a})

-- | Creative Field ID
cfdId :: Lens' CreativeFieldsDelete' Int64
cfdId = lens _cfdId (\ s a -> s{_cfdId = a})

-- | OAuth 2.0 token for the current user.
cfdOauthToken :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdOauthToken
  = lens _cfdOauthToken
      (\ s a -> s{_cfdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfdFields :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdFields
  = lens _cfdFields (\ s a -> s{_cfdFields = a})

-- | Data format for the response.
cfdAlt :: Lens' CreativeFieldsDelete' Alt
cfdAlt = lens _cfdAlt (\ s a -> s{_cfdAlt = a})

instance GoogleRequest CreativeFieldsDelete' where
        type Rs CreativeFieldsDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsDelete'{..}
          = go _cfdQuotaUser (Just _cfdPrettyPrint) _cfdUserIp
              _cfdProfileId
              _cfdKey
              _cfdId
              _cfdOauthToken
              _cfdFields
              (Just _cfdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsDeleteAPI)
                      r
                      u
