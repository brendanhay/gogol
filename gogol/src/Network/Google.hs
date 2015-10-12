{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE UndecidableInstances       #-}

-- |
-- Module      : Network.Google
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google where

import           Control.Applicative
import           Control.Monad
import           Control.Monad.Base
import           Control.Monad.Catch
import           Control.Monad.IO.Class       (MonadIO)
import           Control.Monad.Reader
import qualified Control.Monad.RWS.Lazy       as LRW
import qualified Control.Monad.RWS.Strict     as RW
import qualified Control.Monad.State.Lazy     as LS
import qualified Control.Monad.State.Strict   as S
import           Control.Monad.Trans.Class    (lift)
import           Control.Monad.Trans.Control
import           Control.Monad.Trans.Except   (ExceptT)
import           Control.Monad.Trans.Identity (IdentityT)
import           Control.Monad.Trans.List     (ListT)
import           Control.Monad.Trans.Maybe    (MaybeT)
import           Control.Monad.Trans.Resource
import qualified Control.Monad.Writer.Lazy    as LW
import qualified Control.Monad.Writer.Strict  as W
import           Network.Google.Auth
import           Network.Google.Env
import           Network.Google.Prelude

newtype Google a = Google { unGoogle :: ReaderT Env (ResourceT IO) a }
    deriving
        ( Functor
        , Applicative
        , Alternative
        , Monad
        , MonadPlus
        , MonadIO
        , MonadThrow
        , MonadCatch
        , MonadMask
        , MonadBase IO
        , MonadReader Env
        , MonadResource
        )

instance MonadBaseControl IO Google where
    type StM Google a = StM (ReaderT Env (ResourceT IO)) a

    liftBaseWith f = Google . liftBaseWith $ \g -> f (g . unGoogle)
    restoreM       = Google . restoreM

-- | Monads in which 'Google' actions may be embedded.
class ( Functor     m
      , Applicative m
      , Monad       m
      , MonadIO     m
      , MonadCatch  m
      ) => MonadGoogle m where
    -- | Lift a computation to the 'Google' monad.
    liftGoogle :: Google a -> m a

instance MonadGoogle Google where
    liftGoogle = id

instance MonadGoogle m => MonadGoogle (IdentityT   m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (ListT       m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (MaybeT      m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (ExceptT   e m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (ReaderT   r m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (S.StateT  s m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (LS.StateT s m) where liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (W.WriterT w m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (LW.WriterT w m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (RW.RWST r w s m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (LRW.RWST r w s m) where
    liftGoogle = lift . liftGoogle

runGoogle :: MonadResource m => Env -> Google a -> m a
runGoogle e m = liftResourceT $ runReaderT (unGoogle m) e -- (e ^. environment)

send :: GoogleRequest a => a -> m (Rs a)
send = undefined

-- download :: GoogleRequest (MediaDownload a) => a -> m (Rs (MediaDownload a))
-- download = send . MediaDownload
