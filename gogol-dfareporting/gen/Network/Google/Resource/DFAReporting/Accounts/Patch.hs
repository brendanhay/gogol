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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsPatch@.
module Network.Google.Resource.DFAReporting.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch'
    , AccountsPatch'

    -- * Request Lenses
    , ap1ProFileId
    , ap1Payload
    , ap1Id
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsPatch@ method which the
-- 'AccountsPatch'' request conforms to.
type AccountsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "id" Int64 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _ap1ProFileId :: !Int64
    , _ap1Payload   :: !Account
    , _ap1Id        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ap1ProFileId'
--
-- * 'ap1Payload'
--
-- * 'ap1Id'
accountsPatch'
    :: Int64 -- ^ 'profileId'
    -> Account -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> AccountsPatch'
accountsPatch' pAp1ProFileId_ pAp1Payload_ pAp1Id_ =
    AccountsPatch'
    { _ap1ProFileId = pAp1ProFileId_
    , _ap1Payload = pAp1Payload_
    , _ap1Id = pAp1Id_
    }

-- | User profile ID associated with this request.
ap1ProFileId :: Lens' AccountsPatch' Int64
ap1ProFileId
  = lens _ap1ProFileId (\ s a -> s{_ap1ProFileId = a})

-- | Multipart request metadata.
ap1Payload :: Lens' AccountsPatch' Account
ap1Payload
  = lens _ap1Payload (\ s a -> s{_ap1Payload = a})

-- | Account ID.
ap1Id :: Lens' AccountsPatch' Int64
ap1Id = lens _ap1Id (\ s a -> s{_ap1Id = a})

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        requestClient AccountsPatch'{..}
          = go _ap1ProFileId (Just _ap1Id) (Just AltJSON)
              _ap1Payload
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy AccountsPatchResource)
                      mempty
